SELECT 
    session_id AS WaitingSessionID,
    blocking_session_id AS BlockingSessionID,
    wait_type,
    wait_time / 1000 AS WaitTime_sec
FROM sys.dm_exec_requests
WHERE wait_time > 5000
ORDER BY WaitTime_sec DESC;
