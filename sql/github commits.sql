/* commits with invalid issue id*/
SELECT count(*) as dirtyComits
FROM github.commits ic    
left JOIN jira.issues i ON ic.jiraIssueKey = i.issueKey 
Where i.issueId is null;

/* commits with in no issue id*/
select count(*)  as OrphanCommits from github.commits where jiraIssueKey is not null;

/* change volume*/
SELECT count(*) as changeVolume, i.issue
FROM github.commits ic 
left JOIN jira.issues i ON ic.jiraIssueKey = i.issueKey 
Where ic.jiraIssueKey is not null and i.issue is not null group by i.issue;

/* change volume by release*/
SELECT  g.createddate, g.commitId, j.lastcommit, j.buildnumber
FROM github.commits g
left JOIN jira.issues i ON g.jiraIssueKey = i.issueKey 
left join jenkins.builds j ON g.commitId = j.lastcommit
Where g.jiraIssueKey is not null and i.issue is not null and j.lastcommit is not null;

/* 
query("SELECT count(*) as dirty1 FROM ? ic left JOIN ? i ON ic.issueId = i.issueKey Where i.issueId is null",array(issueid,issueidfromjira))  
issueid - metric1 Name 
issueidfromjira - metric2 Name
*/
 






