-- Script to monitor CPU usage by sessions in SQL Server.

SELECT 
    session_id,
    login_name,
    host_name,
    program_name,
    cpu_time,
    total_elapsed_time / 1000 AS ElapsedTime_sec
FROM sys.dm_exec_sessions
WHERE is_user_process = 1
ORDER BY cpu_time DESC;
