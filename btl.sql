create database AirPort
create table PlaneA(
	Code_Plane	varchar(10) primary key
)

create table Model_Plane(
	Model_number	varchar(10)primary key,
	Capacity		varchar(10),
	Weight			int

)

create table technicians(
	Code_T		varchar(10) primary key,
	Salary		float,
	Phone		varchar(20),
	name_T		varchar(50),
	address		varchar(50)
)

create table Test_of_Plane(
	FAA_number	varchar(10) primary key,
	name_ToP	varchar(50),
	Score		varchar(3),
	Date		date,	
	Status		varchar(20)
)

--a
insert into PlaneA values ('P01')
insert into PlaneA values ('P02')
insert into PlaneA values ('P03')
insert into PlaneA values ('P04')
insert into PlaneA values ('P05')

insert into Model_Plane values ('SPA01','50000J',50000)
insert into Model_Plane values ('SPA02','50000J',50000)
insert into Model_Plane values ('SPA03','50000J',50000)
insert into Model_Plane values ('SPA04','50000J',50000)
insert into Model_Plane values ('SPA05','50000J',50000)

insert into technicians values ('201230H01',5000,'0123456789','John A','69 WST')
insert into technicians values ('201230H02',5000,'0123456789','John B','69 WST')
insert into technicians values ('201230H03',5000,'0123456789','John C','69 WST')
insert into technicians values ('201230H04',5000,'0123456789','John D','69 WST')
insert into technicians values ('201230H05',5000,'0123456789','John E','69 WST')

insert into Test_of_Plane values ('TestWK01','window','A+','6/9/1969','Ex')
insert into Test_of_Plane values ('TestWK02','window','A+','6/9/1969','B')
insert into Test_of_Plane values ('TestWK03','window','A+','6/9/1969','G')
insert into Test_of_Plane values ('TestWK04','window','A+','6/9/1969','Ex')
insert into Test_of_Plane values ('TestWK05','window','A+','6/9/1969','Ex')


--b
DELETE FROM technicians
DELETE FROM Model_Plane

UPDATE technicians SET name_T ='Nguyen Van A'
UPDATE Model_Plane SET Capacity ='60000k'


--c
Delete from Test_of_Plane Where FAA_number = 'TestWK05'
Delete from technicians Where FAA_number = '201230H05'

Update Test_of_Plane set Score = 'B+' where FAA_number = 'TestWK04'
Update Test_of_Plane set Score = 'C+' where FAA_number = 'TestWK03'

--d
create function F_getFName (@name varchar(50))
returns varchar(20)
as
begin
declare @sp int
set @sp = CHARINDEX(' ', @name)
return substring(@name, 1, @sp)
end




create function QuesB()

returns table

	return select FAA_number, date, DATENAME(DW, date) as Dayweek

	from Test_of_Plane

--select * from QuesB()

