-- Practical 2 
-- Query 1:-
create database Hospital_System_114
-- Query 2:-
-- Table 1
create table Hospital_Detail(H_ID int,
							 H_Name varchar(50),
							 H_ContactNo bigint,
							 H_Addrress varchar(100),
							 H_City varchar(10),
							 H_Type varchar(50),
							 H_Fire_Safety int,
							 H_Canteen_Facility int)
-- Query 3 :-
exec Sp_help Hospital_Detail
-- Table 2 
create table Room_Detail(R_ID int,
						 R_Number int,
						 R_Availability varchar(50),
						 R_Type varchar (50),
						 R_Change float)
exec Sp_help Room_Detail
-- Table 3
create table Doctor_Detail(D_ID int,
						   D_Name varchar(20),
						   D_Designation varchar(20),
						   D_Gender varchar(10),
						   D_Salary int,
						   D_EmailID varchar(50),
						   D_ContactNO bigint,
						   D_Address varchar(100),
						   D_City varchar(10),
						   H_ID int)
exec Sp_help Doctor_Detail
-- Table 4
create table Appointment_Detail(A_ID int,
								A_Number int,
								A_Date date,
								A_Time time,
								D_ID int,
								H_ID int)
exec Sp_help Appointment_Detail
-- Table 5
create table Patient_Detail(P_ID int,
							P_FirstName varchar(10),
							P_MiddleName varchar(10),
							P_LastName varchar(10),
							P_ContactNo bigint,
							P_Age int,
							P_Weight float,
							p_Address varchar(100),
							P_City varchar(10),
							P_Gender varchar(10),
							P_Disease varchar(100),
							P_Disease_Remarks varchar(100),
							P_Guardian_ContactNo bigint,
							A_ID int,
							R_ID int,
							D_ID int,
							H_ID int)
exec Sp_help Patient_Detail
-- Table 6
create table Bill_Detail(B_ID int,
						 P_ID int,
						 R_ID int,
						 H_ID int,
						 P_Admit_DateTime dateTime,
						 P_Discharge_DateTime dateTime,
						 P_Medicine_Charge float,
						 P_TotalDays_Charge float,
						 P_Doctor_Charge float,
						 P_Total_Amount float,
						 P_Pending_Amount float)	
exec Sp_help Bill_Detail
-- Table 7
create table Transaction_Detail(Tr_ID int,
								   Tr_Number varchar(20),
								   Tr_B_Amount float,
								   Tr_DateTime dateTime,
								   Tr_Type varchar(20),
								   B_ID int,
						           P_ID int,
								   H_ID int)
exec Sp_help Transaction_Detail
