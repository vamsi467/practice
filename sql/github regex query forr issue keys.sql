
update github.commits set jiraIssueKey = REGEXP_SUBSTR( message,   '([A-Z]{2,10})-\\d{1,4}',1,1, 'c' )