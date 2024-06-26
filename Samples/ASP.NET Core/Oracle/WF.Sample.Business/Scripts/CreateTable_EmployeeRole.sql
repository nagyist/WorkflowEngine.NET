BEGIN
EXECUTE IMMEDIATE 'CREATE TABLE EMPLOYEEROLE (
    EMPLOYEEID RAW(16) NOT NULL,
    ROLEID RAW(16) NOT NULL,
    CONSTRAINT PK_EMPLOYEEROLES PRIMARY KEY (EMPLOYEEID, ROLEID) 
    USING INDEX STORAGE (INITIAL 64K NEXT 1M MAXEXTENTS UNLIMITED),
    CONSTRAINT FK_EMPLOYEEROLE_EMPLOYEE FOREIGN KEY (EMPLOYEEID) REFERENCES EMPLOYEE(ID) ON DELETE CASCADE,
    CONSTRAINT FK_EMPLOYEEROLE_ROLES FOREIGN KEY (ROLEID) REFERENCES ROLES(ID) ON DELETE CASCADE
) LOGGING';
END;