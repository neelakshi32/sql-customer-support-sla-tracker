USE support_sla_db;

SELECT * FROM sla_tracker;

SELECT status, COUNT(*) AS total_tickets
FROM sla_tracker
GROUP BY status;

SELECT issue_category, COUNT(*) AS breached_tickets
FROM sla_tracker
WHERE sla_status = 'SLA Breached'
GROUP BY issue_category
ORDER BY breached_tickets DESC;

SELECT issue_category, ROUND(AVG(resolution_time), 1) AS avg_resolution_days
FROM sla_tracker
GROUP BY issue_category;