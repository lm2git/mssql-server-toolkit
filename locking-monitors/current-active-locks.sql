-- Description: This query retrieves the current number of active locks in the SQL Server instance.
SELECT 
    COUNT(*) AS [Current Active Locks]
FROM 
    sys.dm_tran_locks;