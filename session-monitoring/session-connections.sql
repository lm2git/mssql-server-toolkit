-- Script to monitor connections by session in SQL Server.

SELECT 
    c.session_id,
    c.client_net_address AS ClientAddress,
    c.local_net_address AS ServerAddress,
    c.connect_time,
    c.protocol_type,
    c.auth_scheme
FROM sys.dm_exec_connections c
JOIN sys.dm_exec_sessions s ON c.session_id = s.session_id
WHERE s.is_user_process = 1
ORDER BY c.connect_time DESC;
