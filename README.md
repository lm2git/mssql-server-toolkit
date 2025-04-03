# 🛠️ MSSQL Server Management Toolkit 🛠️

Welcome to the **MSSQL Server Management Toolkit** repository! This repository is a collection of useful SQL scripts, tools, and resources designed to simplify the management, maintenance, troubleshooting, and monitoring of Microsoft SQL Server databases. Whether you're a database administrator (DBA) or a developer working with SQL Server, this toolkit aims to provide you with a set of powerful tools to streamline your workflow.

![SQL Server Icon](https://img.icons8.com/color/48/000000/microsoft-sql-server.png) ![Database Icon](https://img.icons8.com/color/48/000000/database.png) ![Toolbox Icon](https://img.icons8.com/color/48/000000/toolbox.png)

## 📂 Repository Overview

This repository is now organized into the following categories:

- **notifications**: Scripts related to email notifications and operators.
- **monitoring**: Scripts for advanced monitoring using DMVs.
- **filesystem-monitoring**: Scripts to monitor database and log file sizes.
- **performance**: Scripts to analyze and optimize database performance.
- **maintenance**: Tools for database maintenance tasks such as index optimization, statistics updates, and backup management.
- **troubleshooting**: Diagnostic scripts to identify and resolve common SQL Server issues.
- **reports**: Predefined SQL scripts to generate reports for performance analysis.
- **session-monitoring**: Scripts to monitor sessions, connections, and related statistics.
- **memory-monitoring**: Scripts to monitor and analyze memory usage in the SQL Server instance.
- **locking-monitors**: Scripts to monitor and analyze locking and blocking issues.

## 🎯 Purpose

The primary goal of this repository is to provide a centralized collection of SQL Server management tools that can help DBAs and developers:

- **Automate Routine Tasks**: Reduce manual effort by automating common database management tasks.
- **Improve Performance**: Optimize database performance through maintenance scripts and monitoring tools.
- **Troubleshoot Efficiently**: Quickly identify and resolve issues using diagnostic scripts.
- **Monitor Effectively**: Keep an eye on SQL Server health and performance using DMVs and other monitoring tools.

## 🚀 Getting Started

To get started with the MSSQL Server Management Toolkit, simply clone this repository to your local machine:

```bash
git clone https://github.com/lm2git/mssql-server-toolkit.git
```

## 📜 Scripts

### Notifications

The `notifications` folder contains scripts for managing email notifications, such as:

- `update-operators-recipients.sql`: Update operator email addresses.
- `update-email-profile-sender.sql`: Update email profile sender addresses.

### Monitoring

The `monitoring` folder contains scripts for advanced monitoring, such as:

- `advanced-dmv-monitoring.sql`: Provides insights into CPU usage, active queries, and index usage.

### Filesystem Monitoring

The `filesystem-monitoring` folder contains scripts for monitoring database and log file sizes, such as:

- `database-size.sql`: Monitor the size of all databases.
- `log-file-size.sql`: Monitor the size of transaction log files.

### Performance

The `performance` folder contains scripts for analyzing and optimizing performance, such as:

- `fragmented-indexes.sql`: Identify fragmented indexes.
- `missing-indexes.sql`: Identify missing indexes.
- `top-queries-by-reads.sql`: Identify the top queries by logical reads.

### Reports

The `reports` folder contains predefined SQL scripts for performance analysis, such as:

- `top10-avg-wait-time-report.sql`: Identifies the top 10 queries with the highest average wait time.
- `top10-avg-cpu-queries-report.sql`: Identifies the top 10 queries consuming the most CPU.
- `top10-io-intensive-queries-report.sql`: Identifies the top 10 queries with the highest I/O usage.
- `top10-long-running-queries-report.sql`: Identifies the top 10 longest-running queries.

### Session Monitoring

The `session-monitoring` folder contains scripts for monitoring sessions and connections, such as:

- `active-sessions.sql`: Monitor active sessions.
- `session-wait-stats.sql`: Analyze wait statistics for active sessions.
- `session-connections.sql`: Monitor connections by session.
- `session-locks.sql`: Monitor locks held by sessions.
- `session-cpu-usage.sql`: Monitor CPU usage by sessions.

### Memory Monitoring

The `memory-monitoring` folder contains scripts for monitoring and analyzing memory usage, such as:

- `memory-usage-by-database.sql`: Monitor memory usage by database.
- `memory-clerks-usage.sql`: Analyze memory usage by memory clerks.
- `cached-plans-memory-usage.sql`: Monitor memory usage by cached query plans.
- `memory-grants.sql`: Monitor memory grants for queries.
- `memory-usage-summary.sql`: Summarize overall memory usage in the instance.

### Locking Monitors

The `locking-monitors` folder contains scripts for monitoring and analyzing locking and blocking issues, such as:

- `blocking-sessions.sql`: Identify blocking sessions.
- `blocked-process-report.sql`: Generate a report of blocked processes.
- `active-locks-details.sql`: Retrieve details of active locks.
- `top-blocking-sessions.sql`: Identify the top blocking sessions.
- `session-locks-summary.sql`: Summarize locks held by each session.
- `resource-locks-summary.sql`: Summarize locks by resource type.
- `long-waiting-sessions.sql`: Identify sessions waiting for a long time.
- `lock-escalation-events.sql`: Monitor lock escalation events.
- `lock-wait-stats.sql`: Analyze lock wait statistics.
- `lock-deadlocks.sql`: Detect deadlocks in the system.

### Advanced DMV Monitoring

The `advanced-dmv-monitoring.sql` script provides insights into:

- **CPU Usage**: Identify sessions consuming the most CPU.
- **Active Queries**: Monitor currently running queries and their execution stats.
- **Index Usage**: Analyze index usage statistics to optimize performance.

To use this script, navigate to the `monitoring` folder and execute the `advanced-dmv-monitoring.sql` file in your SQL Server Management Studio (SSMS).

```bash
-- Example usage
sqlcmd -S <server_name> -d <database_name> -i monitoring/advanced-dmv-monitoring.sql
```