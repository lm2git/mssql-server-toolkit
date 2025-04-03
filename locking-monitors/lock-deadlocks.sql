SELECT 
    xevent_data.value('(event/data[@name="database_name"]/value)[1]', 'NVARCHAR(256)') AS DatabaseName,
    xevent_data.value('(event/data[@name="object_name"]/value)[1]', 'NVARCHAR(256)') AS ObjectName,
    xevent_data.value('(event/data[@name="lock_mode"]/value)[1]', 'NVARCHAR(256)') AS LockMode,
    xevent_data.value('(event/data[@name="owner_session_id"]/value)[1]', 'INT') AS OwnerSessionID
FROM sys.fn_xe_file_target_read_file('system_health*.xel', NULL, NULL, NULL)
CROSS APPLY (SELECT CAST(event_data AS XML) AS xevent_data) AS T
WHERE xevent_data.value('(event/@name)[1]', 'NVARCHAR(256)') = 'xml_deadlock_report';
