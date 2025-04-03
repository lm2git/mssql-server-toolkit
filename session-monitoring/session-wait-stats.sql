-- Script to analyze wait statistics for active sessions.

SELECT 
    session_id,
    wait_type,
    wait_time / 1000 AS WaitTime_sec,
    blocking_session_id,
    resource_description
FROM sys.dm_exec_requests
WHERE session_id > 50
ORDER BY WaitTime_sec DESC;
