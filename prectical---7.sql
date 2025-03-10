--lab-7--

--1---
     select D_ID,D_Name,D_Salary,D_Salary - (D_Salary * 0.1) 
	 as New_salary from Doctor_Detail 
--2--
     select R_Change,R_Change + (R_Change * 0.07) 
	 as New_salary from Room_Detail

--3--
	select P_FirstName from Patient_Detail
	where P_Address<40

--4--
	select R_Charge,R_Type from Room_Detail
	where R_Charge > 2000

--5--
	select D_ID,D_Name,D_EmailID,D_Designation from Doctor_Detail
	where D_Designation <> 'ortho'

--6--
	select P_ID,P_FirstName,P_ContactNo,P_City from Patient_Detail
	where P_Disease ='brain tumor'
	or
	P_Disease ='tooth break'

--7--
	select H_ID,H_Name,H_Canteen_Facility from Hospital_Detail
	where H_Canteen_Facility=1
	and H_Type = 'Private'
--8--
    select D_Name,D_City,D_Designation from Doctor_Detail
	where D_City <> 'Rajkot' and
	      D_City <> 'Jamnager'
