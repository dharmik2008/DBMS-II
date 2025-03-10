--lab-6--
--1--
select R_Type, count(*) as Room from Room_Detail
group by R_Type

--2--
select P_City, count(*) from Patient_Detail
group by P_City

--3--
select H_Canteen_Facility, count(*) from Hospital_Detail
group by H_Canteen_Facility
having H_Canteen_Facility=1

--4--
select P_Disease, count(*)from Patient_Detail
group by P_Disease

--5--
select D_Designation, count(*) from Doctor_Detail
group by D_Designation
having D_Designation='Dentist'

--6--
select count(*) from Transaction_Detail

--7(1)--
select D_Name,D_Salary from Doctor_Detail
order by D_Salary 

--7(2)--
select D_Name,D_Salary from Doctor_Detail
order by D_Salary asc

--8--
select D_Name,D_Salary from Doctor_Detail
order by D_Salary desc

--9(1)--
select D_Name,D_EmailID,H_ID from Doctor_Detail
order by D_Salary asc

--9(2)--
select D_Name,D_EmailID,H_ID from Doctor_Detail
order by D_Salary desc

--10(1)--
select R_Change from Room_Detail 
order by R_Change asc

--10(2)--
select R_Change from Room_Detail 
order by R_Change desc

--11(1)--
select P_Age from  Patient_Detail
order by P_Age asc

--11(2)--
select P_Age from  Patient_Detail
order by P_Age desc
