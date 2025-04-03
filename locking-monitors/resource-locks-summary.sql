SELECT 
    resource_type AS ResourceType,
    COUNT(*) AS TotalLocks
FROM sys.dm_tran_locks
GROUP BY resource_type
ORDER BY TotalLocks DESC;
