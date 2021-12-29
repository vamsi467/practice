SELECT issueKey, updated, _to, _from FROM jira.issuedetails where _to='closed' and field='Status';

select issueKey, created FROM jira.issues  where created BETWEEN  SYSDATE() - INTERVAL 90 DAY AND SYSDATE();

select AVG( DATEDIFF ( id.updated, i.created)) as leadtime from jira.issues i join jira.issuedetails id on i.issueKey=id.issueKey where id._from is not null and i.created  AND id._to='QA Verified' AND i.issue iN ( 'Defect') AND id.field='Status'  BETWEEN  SYSDATE() - INTERVAL 90 DAY AND SYSDATE();

select AVG( DATEDIFF ( id.updated, i.created)) as leadtime, i.issue as issue from jira.issues i join jira.issuedetails id on i.issueKey=id.issueKey where id._from is not null and i.created  AND id._to='QA Verified'  AND id.field='Status'  BETWEEN  SYSDATE() - INTERVAL 90 DAY AND SYSDATE() group by i.issue;

select i.issueName, i.issueKey, id.updated, i.created as leadtime, i.issue as issue from jira.issues i join jira.issuedetails id on i.issueKey=id.issueKey where id._from is not null and i.created AND i.issue='Defect'  AND id._to='closed'  AND id.field='Status'  BETWEEN  SYSDATE() - INTERVAL 90 DAY AND SYSDATE();

select  id.updated, i.created
        