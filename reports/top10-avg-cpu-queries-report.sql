SELECT TOP 10
    qs.total_worker_time / qs.execution_count AS AvgCPUTime_ms,  -- Average CPU time in milliseconds
    qs.execution_count AS ExecutionCount,
    SUBSTRING(qt.text, (qs.statement_start_offset / 2) + 1,
        ((CASE qs.statement_end_offset
            WHEN -1 THEN DATALENGTH(qt.text)
            ELSE qs.statement_end_offset END
            - qs.statement_start_offset) / 2) + 1) AS QueryText
FROM
    sys.dm_exec_query_stats AS qs
CROSS APPLY
    sys.dm_exec_sql_text(qs.sql_handle) AS qt
ORDER BY
    AvgCPUTime_ms DESC;
