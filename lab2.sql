//Lab2 Sibghat Ullah Rayyan Shaikh 1831773042

//Activity 1:

SELECT LNAME, salary/4 "Weekly Salary", dno FROM employee


//Activity 2:

//a:
SELECT E.FNAME, E.LNAME FROM EMPLOYEE AS
E WHERE E.SUPERSSN=333445555
//b:
SELECT LNAME, FNAME FROM EMPLOYEE, DEPENDENT 
WHERE employee.sex='F' AND SSN=ESSN AND FNAME=DEPENDENT_NAME
//c:
SELECT LNAME, MGRSTARTDATE, DEPENDENT_NAME From employee, department, dependent
WHERE SSN=MGRSSN AND ESSN=MGRSSN
//d:
SELECT DNAME, LNAME, FNAME, PNAME, HOURS 
FROM DEPARTMENT, EMPLOYEE,WORKS_ON, PROJECT 
WHERE DNUMBER = DNO AND SSN = ESSN AND PNO = PNUMBER

/*Activity 3(Hire year asked in the question is 1998 but all the years
in the hire_date column of emps table is after 2000 so this is resulting
in Fatal error*/

SELECT last_name, job_id, hire_date FROM emps WHERE hire_date BETWEEN 
'1998-02-20' AND '1998-05-01'
ORDER BY hire_date ASC;

//Activity 4:
SELECT Last_Name, Department_ID FROM emps 
WHERE Department_Id IN (20,50) ORDER BY Last_Name