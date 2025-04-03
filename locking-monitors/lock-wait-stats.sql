SELECT 
    wait_type,
    wait_time_ms / 1000 AS WaitTime_sec,
    resource_description
FROM sys.dm_os_waiting_tasks
WHERE wait_type LIKE 'LCK%'
ORDER BY WaitTime_sec DESC;
