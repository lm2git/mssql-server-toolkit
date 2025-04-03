SELECT TOP 10
    blocking_session_id AS BlockingSessionID,
    COUNT(*) AS BlockedSessionsCount
FROM sys.dm_exec_requests
WHERE blocking_session_id <> 0
GROUP BY blocking_session_id
ORDER BY BlockedSessionsCount DESC;
