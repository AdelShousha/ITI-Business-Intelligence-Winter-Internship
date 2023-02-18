select * from employee
select fname, lname, salary, dno from employee
select pname, plocation,dnum from project
select fname + ' ' + lname, salary + 12 * salary * 0.1 "ANNUAL COMM" from employee
select fname + ' ' + lname, SSN from employee where salary > 1000
select fname + ' ' + lname, SSN from employee where 12 * salary > 10000
select fname + ' ' + lname, Salary from employee where sex = 'f'
select dnum, dname from Departments where mgrssn = 968574 
select pname, pnumber, plocation from project where dnum = 10
