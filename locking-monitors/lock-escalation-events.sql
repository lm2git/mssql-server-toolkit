SELECT 
    resource_type AS ResourceType,
    request_mode AS LockMode,
    COUNT(*) AS EscalationCount
FROM sys.dm_tran_locks
WHERE resource_type = 'OBJECT'
GROUP BY resource_type, request_mode
ORDER BY EscalationCount DESC;
