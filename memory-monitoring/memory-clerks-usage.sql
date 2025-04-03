-- Script to analyze memory usage by memory clerks in SQL Server.

SELECT 
    type AS MemoryClerkType,
    pages_kb / 1024 AS MemoryUsageMB
FROM sys.dm_os_memory_clerks
WHERE pages_kb > 0
ORDER BY MemoryUsageMB DESC;
