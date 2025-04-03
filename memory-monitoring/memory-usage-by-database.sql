-- Script to monitor memory usage by database in SQL Server.

SELECT 
    DB_NAME(database_id) AS DatabaseName,
    COUNT(*) * 8 / 1024 AS MemoryUsageMB
FROM sys.dm_os_buffer_descriptors
GROUP BY database_id
ORDER BY MemoryUsageMB DESC;
