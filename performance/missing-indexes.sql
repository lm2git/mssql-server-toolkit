-- Script to identify missing indexes in the SQL Server instance.

SELECT 
    DB_NAME(database_id) AS DatabaseName,
    OBJECT_NAME(mid.object_id, mid.database_id) AS TableName,
    migs.unique_compiles AS UniqueCompiles,
    migs.user_seeks AS UserSeeks,
    migs.user_scans AS UserScans,
    migs.avg_total_user_cost AS AvgUserCost,
    migs.avg_user_impact AS AvgUserImpact
FROM sys.dm_db_missing_index_group_stats migs
JOIN sys.dm_db_missing_index_groups mig ON migs.group_handle = mig.index_group_handle
JOIN sys.dm_db_missing_index_details mid ON mig.index_handle = mid.index_handle
ORDER BY AvgUserImpact DESC;
