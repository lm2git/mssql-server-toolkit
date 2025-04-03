-- Script to monitor the size of all databases in the SQL Server instance.

SELECT 
    name AS DatabaseName,
    size * 8 / 1024 AS SizeMB
FROM sys.master_files
GROUP BY name
ORDER BY SizeMB DESC;
