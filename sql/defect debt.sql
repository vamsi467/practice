select 
(SELECT count(*) as createdDefects from jira.issues 
where created BETWEEN  SYSDATE() - INTERVAL  14 DAY AND SYSDATE() and issue = 'Defect')-
(SELECT count(*) as closedDefects
FROM jira.issuedetails i
JOIN jira.issues id ON id.issueKey= i.issueKey 
where  id.issue='Defect' and  i._to='QA Verified' and  id.created BETWEEN  SYSDATE() - INTERVAL 14 DAY AND SYSDATE())
as DefectDebt;