BEGIN
EXECUTE IMMEDIATE 'CREATE INDEX IDX_WORKFLOWPROCESSINSTANCEP_P ON WORKFLOWPROCESSINSTANCEP (PROCESSID)
LOGGING';
END;