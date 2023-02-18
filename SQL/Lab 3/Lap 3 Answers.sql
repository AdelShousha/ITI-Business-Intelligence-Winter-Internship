/*1*/
SELECT Departments.Dnum,Departments.Dname ,Employee.SSN,
Employee.FName + ' ' + Employee.LName AS ManagerName FROM Departments
JOIN Employee ON Employee.SSN = Departments.MGRSSN 

/*2*/
SELECT Dname ,Pname 
FROM Departments D, Project P
where D.Dnum = P.Dnum

SELECT Departments.Dname AS DepartmentName, Project.Pname AS ProjectName
FROM Departments JOIN Project ON Departments.Dnum = Project.Dnum;

/*3*/
SELECT Employee.FName + ' ' + Employee.LName AS EmployeeName , Dependent.*
FROM Employee JOIN Dependent ON Employee.SSN = Dependent.ESSN;

/*4*/
SELECT Pname , Pnumber, City from project
WHERE Project.City IN ('Cairo', 'Alex');

/*5*/
SELECT * FROM Project
WHERE Pname LIKE 'A%';

/*6*/
SELECT FName, LName,Salary, Dno FROM Employee
WHERE Dno = 30 AND Employee.Salary BETWEEN 1000 AND 2000;

/*7*/
SELECT Fname, Lname FROM Employee
INNER JOIN Works_for ON Employee.SSN = Works_for.ESSN
INNER JOIN Project ON Works_for.Pno = Project.Pnumber
WHERE Dno= 10 AND Project.Pname = 'AL Rabwah' AND Works_for.Hours >= 10;

/*8*/
SELECT FName, LName FROM Employee
WHERE Employee.Superssn = 
(SELECT Employee.SSN FROM Employee WHERE Employee.FName = 'Kamel' AND Employee.LName = 'Mohamed');

SELECT E.FName +' '+ E.LName as EmployeeName,
S.FName+' '+ S.LName as supervisor 
FROM Employee E ,  Employee S 
WHERE E.superssn =S.SSN  And S.FName = 'Kamel' AND S.LName = 'Mohamed' ;

SELECT E.FName +' '+ E.LName as EmployeeName,
S.FName+' '+ S.LName as supervisor 
FROM Employee E ,  Employee S 
WHERE S.superssn =E.SSN  And S.FName = 'Kamel' AND S.LName = 'Mohamed' ;

/*9*/
select fname,lname, pname from Employee , Project ,Works_for
where Pno = Pnumber and ESSn = SSN
order by Pname

/*10*/
select pnumber,Dname,Fname,Lname,Address,BDate
from Departments D, Project P, Employee E
where City ='Cairo'  and SSN = mgrssn and p.Dnum = D.Dnum

/*11*/
Select * from Departments 
join Employee on MGRSSN = SSN

/*12*/
Select * from Employee 
left join Dependent on SSN = ESSN

/*13*/
insert into Employee 
(Fname, Lname, SSN,Bdate, Address, Sex, Salary, Superssn, Dno)
values ('Ahmed', 'Zaki', 102672,23/12/2000, 'Mansoura', 'M', 3000, 112233, 30)

/*14*/
insert into Employee 
(Fname, Lname, SSN,Bdate, Address, Sex, Dno)
values ('Mohamed', 'Zaki', 102660,23/1/2000, 'Mansoura', 'M', 30)

/*15*/
update Employee
set salary = salary * 1.2
where ssn=112233