-- THIS FUNCTION WILL CHECK THE EXISTENCE OF THE DEPARTMENTS NAMES OF THE IMPORTED TABLE(EMP) IN THE DEPARTMENTS TABLE
CREATE OR REPLACE FUNCTION EXSISTANT_DEPT_NAME(V_DEPT_NAME VARCHAR2)
RETURN BOOLEAN
IS 
    EXISTENCE BOOLEAN;
    CURSOR DEPT_CURSOR IS
        SELECT DEPARTMENT_NAME 
        FROM DEPARTMENTS
        WHERE DEPARTMENT_NAME = V_DEPT_NAME;
BEGIN
    FOR DEPT_REC IN DEPT_CURSOR LOOP
        IF DEPT_CURSOR%FOUND
        THEN 
            EXISTENCE := TRUE;
        ELSE
            EXISTENCE := FALSE;
        END IF;
    END LOOP;
    RETURN EXISTENCE;
END;
