-- Script to monitor locks held by sessions in SQL Server.

SELECT 
    l.request_session_id AS SessionID,
    l.resource_type AS ResourceType,
    l.resource_description AS ResourceDescription,
    l.request_mode AS LockMode,
    l.request_status AS LockStatus
FROM sys.dm_tran_locks l
JOIN sys.dm_exec_sessions s ON l.request_session_id = s.session_id
WHERE s.is_user_process = 1
ORDER BY SessionID;
