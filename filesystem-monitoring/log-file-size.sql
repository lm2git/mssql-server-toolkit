-- Script to monitor the size of transaction log files for all databases.

SELECT 
    DB_NAME(database_id) AS DatabaseName,
    name AS LogFileName,
    size * 8 / 1024 AS LogSizeMB
FROM sys.master_files
WHERE type_desc = 'LOG'
ORDER BY LogSizeMB DESC;
