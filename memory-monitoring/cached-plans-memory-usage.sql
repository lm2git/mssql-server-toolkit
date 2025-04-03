-- Script to monitor memory usage by cached query plans in SQL Server.

SELECT 
    objtype AS ObjectType,
    cacheobjtype AS CacheObjectType,
    size_in_bytes / 1024 / 1024 AS MemoryUsageMB,
    text AS QueryText
FROM sys.dm_exec_cached_plans
CROSS APPLY sys.dm_exec_sql_text(plan_handle)
ORDER BY MemoryUsageMB DESC;
