-- This query retrieves information about blocking sessions in SQL Server.
-- It shows the blocking session ID, blocked session ID, wait type, wait time in seconds,
SELECT 
    blocking_session_id AS BlockingSessionID,
    session_id AS BlockedSessionID,
    wait_type,
    wait_time / 1000 AS WaitTime_sec,
    resource_description
FROM sys.dm_exec_requests
WHERE blocking_session_id <> 0
ORDER BY WaitTime_sec DESC;
