-- Script to monitor memory grants for queries in SQL Server.

SELECT 
    session_id,
    requested_memory_kb / 1024 AS RequestedMemoryMB,
    granted_memory_kb / 1024 AS GrantedMemoryMB,
    query_cost,
    text AS QueryText
FROM sys.dm_exec_query_memory_grants
CROSS APPLY sys.dm_exec_sql_text(plan_handle)
ORDER BY RequestedMemoryMB DESC;
