--LAB 13--

--1--
select D_Name,D_Salary from Doctor_Detail
where D_Salary=(select min(D_Salary)from Doctor_Detail);

--2--
select P_ID,P_FirstName from Patient_Detail
where P_ID=(
               select P_ID from Bill_Detail
			   where P_Total_Amount=
			   (
			       select MAX(P_Total_Amount) from Bill_Detail
			   )
		   );


--3--
select D_Name,D_ContactNo,D_City from Doctor_Detail
where H_ID in
(
      select H_ID from Hospital_Details
	  where H_Type='Private Hospital'
);
 --4--
select P_FirstName from Patient_Detail
where A_ID in
(
      select A_ID from Appointment_Detail
	  where A_Date between '11-15-2023' and '02-25-2024'
);

--5--
select D_Name,P_FirstName,D_City,P_City from Doctor_Detail,Patient_Detail
where Doctor_Detail.D_City in 
(
      select P_City from Patient_Detail
	  where P_City=D_City
)
and Patient_Detail.P_City=Doctor_Detail.D_City
and Patient_Detail.D_ID=Doctor_Detail.D_ID



select Doctor_Detail.D_Name,Patient_Detail.P_FirstName,Doctor_Detail.D_City,Patient_Detail.P_City from Doctor_Detail
inner join Patient_Detail
on Doctor_Detail.D_ID=Patient_Detail.D_ID
where Doctor_Detail.D_City in
(
      select Patient_Detail.P_City from Patient_Detail
	  where Doctor_Detail.D_City=Patient_Detail.P_City
);

--6--
select P_FirstName from Patient_Detail
where P_ID in 
(
      select P_ID from Bill_Detail
	  where P_Pending_Amount=0
);

  