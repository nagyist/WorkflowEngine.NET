BEGIN
EXECUTE IMMEDIATE
    'INSERT INTO WORKFLOWSYNC (Name, LOCKFLAG) 
    SELECT  ''Timer'', sys_guid() 
    FROM DUAL 
    WHERE NOT EXISTS (
        SELECT 1 FROM WORKFLOWSYNC WHERE Name = ''Timer''
    )';
EXECUTE IMMEDIATE
    'INSERT INTO WORKFLOWSYNC (Name, LOCKFLAG) 
    SELECT  ''ServiceTimer'', sys_guid() 
    FROM DUAL WHERE NOT EXISTS (
        SELECT 1 FROM WORKFLOWSYNC WHERE Name = ''ServiceTimer''
    )';
END;
