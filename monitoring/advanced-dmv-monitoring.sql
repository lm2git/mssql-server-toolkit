-- Advanced DMV Monitoring Script

-- Query to monitor CPU usage by sessions
SELECT 
    session_id,
    login_name,
    status,
    cpu_time,
    memory_usage,
    total_elapsed_time
FROM sys.dm_exec_sessions
WHERE is_user_process = 1
ORDER BY cpu_time DESC;

-- Query to monitor active queries and their execution stats
SELECT 
    r.session_id,
    r.status,
    r.wait_type,
    r.cpu_time,
    r.total_elapsed_time,
    t.text AS query_text
FROM sys.dm_exec_requests r
CROSS APPLY sys.dm_exec_sql_text(r.sql_handle) t
ORDER BY r.cpu_time DESC;

-- Query to monitor index usage statistics
SELECT 
    OBJECT_NAME(s.object_id) AS table_name,
    i.name AS index_name,
    s.user_seeks,
    s.user_scans,
    s.user_lookups,
    s.user_updates
FROM sys.dm_db_index_usage_stats s
JOIN sys.indexes i ON s.object_id = i.object_id AND s.index_id = i.index_id
WHERE database_id = DB_ID()
ORDER BY s.user_seeks DESC;
