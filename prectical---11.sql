--LAB 11--

--1--
select H_Name,R_Type
from Hospital_Details
inner join Room_Details
on Hospital_Details.H_ID=Room_Details.H_ID

--2--
select H_Name,D_Name
from Hospital_Details
inner join Doctor_Detail
on Hospital_Details.H_ID=Doctor_Detail.H_ID

--3--
select P_FirstName,R_Number
from Patient_Detail
inner join Room_Details
on Patient_Detail.R_ID=Room_Details.R_ID

--4--
select H_Name,P_FirstName,D_Name
from Hospital_Details
inner join Patient_Detail
on Hospital_Details.H_ID=Patient_Detail.H_ID
inner join Doctor_Detail
on Patient_Detail.D_ID=Doctor_Detail.D_ID

--5--
select P_FirstName,A_Number,H_Name
from Patient_Detail
inner join Appointment_Detail
on Patient_Detail.A_ID=Appointment_Detail.A_ID
inner join Hospital_Details
on Appointment_Detail.H_ID=Hospital_Details.H_ID 

--6--
select P_FirstName,P_Total_Amount,H_Name
from Patient_Detail
inner join Bill_Detail
on Patient_Detail.P_ID=Bill_Detail.P_ID
inner join Hospital_Details
on Bill_Detail.H_ID=Hospital_Details.H_ID

--7--
select P_FirstName,P_Disease,P_Total_Amount,P_Pending_Amount,B_ID
from Patient_Detail
inner join  Bill_Detail
on Patient_Detail.P_ID=Bill_Detail.P_ID
where P_Pending_Amount>3000

--8--
select Doctor_Detail.D_ID,D_Name,P_ID
from Doctor_Detail
left outer join Patient_Detail
on Doctor_Detail.D_ID=Patient_Detail.D_ID

--9--
select A_Number,P_ID,P_FirstName  
from Appointment_Detail
right outer join Patient_Detail
on Appointment_Detail.A_ID=Patient_Detail.A_ID

--10--
select R_Number,P_FirstName 
from Room_Details
full outer join Patient_Detail
on Room_Details.H_ID=Patient_Detail.H_ID