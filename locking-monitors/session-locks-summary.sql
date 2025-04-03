SELECT 
    request_session_id AS SessionID,
    COUNT(*) AS TotalLocks
FROM sys.dm_tran_locks
GROUP BY request_session_id
ORDER BY TotalLocks DESC;
