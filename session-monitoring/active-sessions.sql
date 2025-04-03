-- Script to monitor active sessions in SQL Server.

SELECT 
    session_id,
    login_name,
    status,
    host_name,
    program_name,
    cpu_time,
    memory_usage,
    total_elapsed_time / 1000 AS ElapsedTime_sec
FROM sys.dm_exec_sessions
WHERE is_user_process = 1
ORDER BY total_elapsed_time DESC;
