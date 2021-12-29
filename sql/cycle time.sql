SELECT * FROM jira.issuedetails where _from = 'To DO';

SELECT * FROM jira.issuedetails where _to = 'Not Started';

SELECT * FROM jira.issuedetails where _to = 'In Progress';

SELECT * FROM jira.issuedetails where _to = 'In Review';

SELECT * FROM jira.issuedetails where _to = 'In Development';
SELECT * FROM jira.issuedetails where _to = 'created';

SELECT * FROM jira.issuedetails where _to = 'QA Verified';

SELECT * FROM jira.issuedetails where field = 'status';

SELECT * FROM jira.issuedetails where _to = 'In Development';

SELECT * FROM jira.issuedetails where _to = 'QA Verified';

SELECT avg(datediff(i2.created, i1.created)) as average
FROM jira.issuedetails i1
JOIN jira.issuedetails i2 ON i1.issueKey= i2.issueKey 
JOIN jira.issues id ON id.issueKey= i1.issueKey 
where i1._from='Not Started' and  i2._to='QA Verified';

SELECT * FROM jira.issuedetails where issueKey='KONA-9939' and   field = 'status';
     
