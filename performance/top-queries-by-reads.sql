-- Script to identify the top queries by logical reads.

SELECT TOP 10
    qs.total_logical_reads / qs.execution_count AS AvgLogicalReads,
    qs.execution_count AS ExecutionCount,
    SUBSTRING(qt.text, (qs.statement_start_offset / 2) + 1,
        ((CASE qs.statement_end_offset
            WHEN -1 THEN DATALENGTH(qt.text)
            ELSE qs.statement_end_offset END
            - qs.statement_start_offset) / 2) + 1) AS QueryText
FROM sys.dm_exec_query_stats qs
CROSS APPLY sys.dm_exec_sql_text(qs.sql_handle) qt
ORDER BY AvgLogicalReads DESC;
