--practial-4--
--2--
alter table Hospital_Detail
add H_EmailID1 varchar(50)

exec sp_help Hospital_Detail

--syntax of update
-update table name
set col name record
where condition

--ex--

update Hospital_Detail
set H_EmailID1='samarpan@gmail.com'
where H_ID=101

update Hospital_Detail
set H_EmailID1='nakshatra@yahoo.in'
where H_ID=102

update Hospital_Detail
set H_EmailID1='civilmorbi@gov.in'
where H_ID=103

update Hospital_Detail
set H_EmailID1='amity@gmail'
where H_ID=104

update Hospital_Detail
set H_EmailID1='generalrajkot@gov.in'
where H_ID=105

select*from Hospital_Detail

--4--
alter table Room_Detail
add H_ID int

exec sp_help Hospital_Detail

update Room_Detail
set H_ID=101
where R_ID=2001

update Hospital_Detail
set H_ID=103
where R_ID=2002

update Hospital_Detail
set H_ID=104
where R_ID=2003

update Hospital_Detail
set H_ID=103
where R_ID=2004

update Hospital_Detail
set H_ID=102
where R_ID=2005

update Hospital_Detail
set H_ID=104
where R_ID=2006

update Hospital_Detail
set H_ID=102
where R_ID=2007

update Hospital_Detail
set H_ID=101
where R_ID=2008

update Hospital_Detail
set H_ID=105
where R_ID=2009

update Hospital_Detail
set H_ID=105
where R_ID=2010

--5--
alter table patient Address
update Hospital_Detail
set 'Green city main Road'
where P_ID=5009

select*from Hospital_Detail

--8--
alter table Hospital_Detail
alter column H_EmailID1 nvarchar(50)

exec sp_help Hospital_Detail

select*from Hospital_Detail

alter table Hospital_Detail
alter column H_Addrress nvarchar(50)

alter table Hospital_Detail
alter column H_Name nvarchar(50)

alter table Hospital_Detail
alter column H_City nvarchar(50)

alter table Hospital_Detail
alter column H_Type nvarchar(50)
--9--
alter table Appointment_Detail
alter column A_Date date

exec sp_help Appointment_Detail

--10--
alter table Patient_Detail
drop column P_MiddleName

select*from Patient_Detail

--11--
alter table Doctor_Detail
drop column D_Gender

select*from Doctor_Detail

--12--

sp_rename 'Transaction_Detail.Tr_B_Amount','Tr_Bill_Amount','column'

select*from Transaction_Detail

--13--

select*from Room_Detail
select*from Hospital_Detail

--14--

select R_ID,R_Number,R_Availability from Room_Detail

--15--

select H_Name,H_ContactNo,H_Type from Hospital_Detail
where H_Type='private'