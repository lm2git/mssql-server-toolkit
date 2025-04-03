-- This script retrieves information about blocked processes in SQL Server. 
SELECT 
    r.session_id AS BlockedSessionID,
    r.blocking_session_id AS BlockingSessionID,
    t.text AS QueryText,
    r.wait_type,
    r.wait_time / 1000 AS WaitTime_sec
FROM sys.dm_exec_requests r
CROSS APPLY sys.dm_exec_sql_text(r.sql_handle) t
WHERE r.blocking_session_id <> 0
ORDER BY WaitTime_sec DESC;
