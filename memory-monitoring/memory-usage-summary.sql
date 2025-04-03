-- Script to summarize overall memory usage in the SQL Server instance.

SELECT 
    physical_memory_in_use_kb / 1024 AS PhysicalMemoryInUseMB,
    virtual_address_space_reserved_kb / 1024 AS VirtualMemoryReservedMB,
    virtual_address_space_committed_kb / 1024 AS VirtualMemoryCommittedMB,
    locked_page_allocations_kb / 1024 AS LockedPagesMB,
    memory_utilization_percentage AS MemoryUtilizationPercent
FROM sys.dm_os_process_memory;
