-- This query retrieves detailed information about active locks in the SQL Server instance.
-- It includes the session ID, resource type, resource description, lock mode, and lock status.
-- The results are ordered by session ID for better readability.
SELECT 
    request_session_id AS SessionID,
    resource_type AS ResourceType,
    resource_description AS ResourceDescription,
    request_mode AS LockMode,
    request_status AS LockStatus
FROM sys.dm_tran_locks
ORDER BY SessionID;
