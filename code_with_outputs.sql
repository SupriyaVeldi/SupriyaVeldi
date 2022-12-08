SQL> create table land_users_data(
    User_name varchar(18) not null,
    Adharnumber number(12) primary key,
    Pan_number varchar2(10) not null,
    City varchar2(15) not null,
    State varchar2(20) not null,
    No_of_acres number(5,3)not null,
    Status varchar2(30) not null,
    Phone_number number(10) not null);
----------------------------------
Table created.
---------------------------------
desc land_users_data;
--------------------------------------
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 USER_NAME                                 NOT NULL VARCHAR2(18)
 ADHARNUMBER                               NOT NULL NUMBER(12)
 PAN_NUMBER                                NOT NULL VARCHAR2(10)
 CITY                                      NOT NULL VARCHAR2(15)
 STATE                                     NOT NULL VARCHAR2(20)
 NO_OF_ACRES                               NOT NULL NUMBER(5,3)
 STATUS                                    NOT NULL VARCHAR2(30)
 PHONE_NUMBER                              NOT NULL NUMBER(10)

------------------------------------------
declare 
begin
	insert into land_users_data values('Ranbeer',526601057771,'EH012389H1','Krishna','Andhrapradesh',4.0,'Registered',9291752838);
	insert into land_users_data values('Venkatesh',630018239437,'C0DEH124B6','Godavari','Andhrapradesh',6.23,'Not_yet_Registered',7392840329);
	insert into land_users_data values('Tirupati',562891260103,'HGQ0871653','Kurnool','Andhrapradesh',3,'Forest_area',8486721953);
	insert into land_users_data values('Gopi',634015238273,'EHQ0891649','Kadapa','Andhrapradesh',2.41,'Registered',8692756410);
	insert into land_users_data values('Ramu',567101048273,'GHQ9823015','Krishna','Andhrapradesh',7.3,'Not_yet_Registered',8567949152);
	insert into land_users_data values('Raja',536601050771,'EHQ8749231','Krishna','Andhrapradesh',5.0,'Registered',7382940428);
	insert into land_users_data values('Yaswanth',650128734301,'GH0Q629175','Kurnool','Andhrapradesh',8.23,'Not_yet_Registered',9872192306);
	insert into land_users_data values('Harish',728194023458,'QG01267534','Kadapa','Andhrapradesh',4.51,'Registered',8230919475);
	insert into land_users_data values('Ayyapa',566180123601,'EHGQ018961','Krishna','Andhrapradesh',3.57,'Registered',7382940437);
	insert into land_users_data values('Ramana',543942018612,'GRQ0912645','Kadapa','Andhrapradesh',5.31,'Registered',8688530538);
	insert into land_users_data values('Srinivasarao',561023454571,'EQH0182396','Godavari','Andhrapradesh',3.74,'Registered',7639120463);
	insert into land_users_data values('Laxmanrao',560108913095,'EQH1076405','Krishna','Andhrapradesh',6.40,'Not_yet_Registered',7684103932);
	insert into land_users_data values('Srinu',512043873098,'EWQ0891245','Kurnool','Andhrapradesh',4.62,'Forest_area',8301293661);
end;
/
----------------------------------------------------------
PL/SQL procedure successfully completed.
--------------------------------------------------------
create or replace procedure "Show_details_Users" 
as
begin
for dataa in (select*from land_users_data)
loop
    dbms_output.put_line(dataa.User_name || ' | ' ||
	 dataa.Adharnumber || ' | ' ||
	dataa.Pan_number || ' | ' || 
	dataa.City || ' | ' ||
	dataa.State || ' | ' ||
	 dataa.No_of_acres || ' | ' ||
	 dataa.Status || ' | ' ||
	 dataa.Phone_number);
end loop;
end;
/
Procedure created.
------------------------
exec "Show_details_Users";
---------------------------------------------
Ranbeer | 526601057771 | EH012389H1 | Krishna | Andhrapradesh | 4 | Registered |
9291752838
Venkatesh | 630018239437 | C0DEH124B6 | Godavari | Andhrapradesh | 6.23 |
Not_Yet_Registered | 7392840329
Tirupati | 562891260103 | HGQ0871653 | Kurnool | Andhrapradesh | 3 | Forest_area
| 8486721953
Gopi | 634015238273 | EHQ0891649 | Kadapa | Andhrapradesh | 2.41 | Registered |
8692756410
Ramu | 567101048273 | GHQ9823015 | Krishna | Andhrapradesh | 7.3 |
Not_yet_Registered | 8567949152
Raja | 536601050771 | EHQ8749231 | Krishna | Andhrapradesh | 5 | Registered |
7382940428
Yaswanth | 650128734301 | GH0Q629175 | Kurnool | Andhrapradesh | 8.23 |
Not_yet_Registered | 9872192306
Harish | 728194023458 | QG01267534 | Kadapa | Andhrapradesh | 4.51 | Registered
| 8230919475
Ayyapa | 566180123601 | EHGQ018961 | Krishna | Andhrapradesh | 3.57 | Registered
| 7382940437
Ramana | 543942018612 | GRQ0912645 | Kadapa | Andhrapradesh | 5.31 | Registered
| 8688530538
Srinivasarao | 561023454571 | EQH0182396 | Godavari | Andhrapradesh | 3.74 |
Registered | 7639120463
Laxmanrao | 560108913095 | EQH1076405 | Krishna | Andhrapradesh | 6.4 |
Not_yet_Registered | 7684103932
Srinu | 512043873098 | EWQ0891245 | Kurnool | Andhrapradesh | 4.62 | Forest_area
| 8301293661

PL/SQL procedure successfully completed.
--------------------------------------------------------------------------------------
select*from land_users_data;
-------------------------------------------------------------------------------------------------

USER_NAME	ADHARNUMBER	PAN_NUMBER	CITY	STATE	NO_OF_ACRES	STATUS	PHONE_NUMBER
Ranbeer	526601057771	EH012389H1	Krishna	Andhrapradesh	4	Registered	9291752838
Venkatesh	630018239437	C0DEH124B6	Godavari	Andhrapradesh	6.23	Not_Yet_Registered	7392840329
Tirupati	562891260103	HGQ0871653	Kurnool	Andhrapradesh	3	Forest_area	8486721953
Gopi	634015238273	EHQ0891649	Kadapa	Andhrapradesh	2.41	Registered	8692756410
Ramu	567101048273	GHQ9823015	Krishna	Andhrapradesh	7.3	Not_yet_Registered	8567949152
Raja	536601050771	EHQ8749231	Krishna	Andhrapradesh	5	Registered	7382940428
Yaswanth	650128734301	GH0Q629175	Kurnool	Andhrapradesh	8.23	Not_yet_Registered	9872192306
Harish	728194023458	QG01267534	Kadapa	Andhrapradesh	4.51	Registered	8230919475
Ayyapa	566180123601	EHGQ018961	Krishna	Andhrapradesh	3.57	Registered	7382940437
Ramana	543942018612	GRQ0912645	Kadapa	Andhrapradesh	5.31	Registered	8688530538
Srinivasarao	561023454571	EQH0182396	Godavari	Andhrapradesh	3.74	Registered	7639120463
Laxmanrao	560108913095	EQH1076405	Krishna	Andhrapradesh	6.4	Not_yet_Registered	7684103932
Srinu	512043873098	EWQ0891245	Kurnool	Andhrapradesh	4.62	Forest_area	8301293661

13 rows selected.
--------------------------------------------------------------------------------------------------------
--Creating table for Registered land details
create table Registration_details(
Survey_number number(3) primary key,
Passbook_number number(11) not null,
Sub_division varchar(18) not null,
land_type varchar(3) not null,
Usage_purpose varchar(18) not null);
desc Registration_details;
---------------------------------------
Table created.
---------------------------------------
desc Registration_details;
---------------------------------------
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 SURVEY_NUMBER                             NOT NULL NUMBER(3)
 PASSBOOK_NUMBER                           NOT NULL NUMBER(11)
 SUB_DIVISION                              NOT NULL VARCHAR2(18)
 LAND_TYPE                                 NOT NULL VARCHAR2(3)
 USAGE_PURPOSE                             NOT NULL VARCHAR2(18)
------------------------------------------------
--Creating procedure for inserting data into table..
create or replace procedure Land_details (Survey_number in number,
     Passbook_number in number,
     Sub_division in varchar2,
     Land_type in varchar,
     Usage_purpose in varchar) 
as
begin
insert into Registration_details values(Survey_number,Passbook_number,Sub_division,
                                    Land_type,Usage_purpose);
end;
/
-----------------------------------------------------------
Procedure created.
----------------------------------------------------------------
--Passing data to procedure..
declare
begin
Land_details(245,62910384591,'Nuzvid','Dry','Agriculture');
end;
/
---------------------------------------------
PL/SQL procedure successfully completed.
---------------------------------------------
--Passing data by accepting from the user.
accept Survey_number number prompt 'enter survey_number: ';
accept Passbook_number number prompt 'enter passbook_number: ';
accept Sub_division char prompt 'enter subdivision: ';
accept Land_type char prompt 'enter type of land(wet/dry): ';
accept Usage_purpose char prompt 'enter the purpose of usage of land: ';
---------------------------------------------
--Passing the data collected from user to the procedure "Land_details"
declare
    Survey_number number(3):=&Survey_number;
    Passbook_number number(11):=&Passbook_number;
    Sub_division varchar2(18):=&Sub_division;
    Land_type varchar(3):=&Land_type;
    Usage_purpose varchar(18):=&Usage_purpose;
begin
    
   Land_details(Survey_number,Passbook_number,Sub_division,Land_type,Usage_purpose);
   end;
   /
--------------------------------------------------
old   2:     Survey_number number(3):=&Survey_number;
new   2:     Survey_number number(3):=       238;
old   3:     Passbook_number number(11):=&Passbook_number;
new   3:     Passbook_number number(11):=6.2981E+10;
old   4:     Sub_division varchar2(18):=&Sub_division;
new   4:     Sub_division varchar2(18):='Nuzvid';
old   5:     Land_type varchar(3):=&Land_type;
new   5:     Land_type varchar(3):='wet';
old   6:     Usage_purpose varchar(18):=&Usage_purpose;
new   6:     Usage_purpose varchar(18):='Agriculture';

PL/SQL procedure successfully completed.
--------------------------------------------------------
--Creating table for not Registered land_details
create table not_registered_land_details(Sub_division varchar2(18) not null,
				Land_type varchar(3) not null,
				Usage_purpose varchar(20) not null);
--------------------------------------------
Table created.
--------------------------------------------
desc not_registered_land_details;
--------------------------------------------
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 SUB_DIVISION                              NOT NULL VARCHAR2(18)
 LAND_TYPE                                 NOT NULL VARCHAR2(3)
 USAGE_PURPOSE                             NOT NULL VARCHAR2(20)
-------------------------------------------------------------
--Creating procedure to insert data into table "not_registered_land_details"
create or replace procedure not_registered_Ldetails(Sub_div in varchar,
						L_type in varchar,
						Usag_pur in varchar)
as
begin
insert into not_registered_land_details(Sub_division,Land_type,Usage_purpose) 
					values (Sub_div,L_type,Usag_pur);
end;
/
--------------------------------------------
Procedure created.
--------------------------------------------
--Inserting some sample data..
SQL> accept Sub_division char prompt 'enter subdivision of land that related to: ';
enter subdivision of land that related to: 'Vissannapet'
SQL> accept Land_type char prompt 'enter the type of land(wet/dry): ';
enter the type of land(wet/dry): 'dry'
SQL> accept Usage_purpose char prompt 'enter the usage purpose of land: ';
enter the usage purpose of land: 'Housing'

SQL> declare
  2  Sub_division varchar(18):=&Sub_division;
  3  Land_type varchar(3):=&Land_type;
  4  Usage_purpose varchar(20):=&Usage_purpose;
  5  begin
  6  not_registered_Ldetails(Sub_division,Land_type,Usage_purpose);
  7  end;
  8  /

old   2: Sub_division varchar(18):=&Sub_division;
new   2: Sub_division varchar(18):='Vissannapet';
old   3: Land_type varchar(3):=&Land_type;
new   3: Land_type varchar(3):='dry';
old   4: Usage_purpose varchar(20):=&Usage_purpose;
new   4: Usage_purpose varchar(20):='Housing';
------------------------------------------------------------
--Creating table for the land that related to forest_area..
create table forest_area_details(Sub_division varchar2(18) not null,
			Land_type varchar(3) not null,
			Usage_purpose varchar2(20) not null);
 desc forest_area_details;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 SUB_DIVISION                              NOT NULL VARCHAR2(18)
 LAND_TYPE                                 NOT NULL VARCHAR2(3)
 USAGE_PURPOSE                             NOT NULL VARCHAR2(20)
-------------------------------------------------------------------
--Creating procedure to insert data into table..
create or replace procedure forest_land_details(Sub_div in varchar,
						L_type in varchar,
						Usag_pur in varchar)
as
begin
insert into forest_area_details(Sub_division,Land_type,Usage_purpose) 
					values (Sub_div,L_type,Usag_pur);
end;
/
-----------------------------------------------------------
Procedure created.
-----------------------------------------------------------
--Taking details of user dynamically.
SQL>  accept Sub_division char prompt 'enter subdivision of land that related to: ';
enter subdivision of land that related to: 'kadapa'
SQL>  accept Land_type char prompt 'enter the type of land(wet/dry): ';
enter the type of land(wet/dry): 'dry'
SQL>  accept Usage_purpose char prompt 'enter the usage purpose of land: ';
enter the usage purpose of land: 'Agriculture'
SQL> declare
  2     Sub_division varchar(18):=&Sub_division;
  3      Land_type varchar(3):=&Land_type;
  4      Usage_purpose varchar(20):=&Usage_purpose;
  5      begin
  6      forest_land_details(Sub_division,Land_type,Usage_purpose);
  7      end;
  8      /
old   2:    Sub_division varchar(18):=&Sub_division;
new   2:    Sub_division varchar(18):='kadapa';
old   3:     Land_type varchar(3):=&Land_type;
new   3:     Land_type varchar(3):='dry';
old   4:     Usage_purpose varchar(20):=&Usage_purpose;
new   4:     Usage_purpose varchar(20):='Agriculture';

PL/SQL procedure successfully completed
--------------------------------------------------------------------
--------------------------------------------------------------------
--Creating procedures to display details of Registered land users,Not Registered Users and Forest area users..

SQL> create or replace procedure "Show_Registered_Land_Details"
  2  as
  3  begin
  4  for dataa in (select*from Registration_details)
  5  loop
  6  dbms_output.put_line(dataa.Survey_number || ' | ' || dataa.Passbook_number || ' | ' ||
  7  dataa.Sub_division || ' | ' || dataa.Land_type || ' | ' || dataa.Usage_purpose);
  8  end loop;
  9  end;
 10  /

Procedure created.

SQL>  create or replace procedure "Show_Not_Registered_Land_Details"
  2      as
  3      begin
  4      for dataa in (select*from not_registered_land_details)
  5      loop
  6      dbms_output.put_line(dataa.Sub_division || ' | ' || dataa.Land_type || ' | ' || dataa.Usage_purpose);
  7      end loop;
  8      end;
  9     /

Procedure created.

SQL> create or replace procedure "Show_Forest_Land_Details"
  2  as
  3  begin
  4  for dataa in (select*from forest_area_details)
  5  loop
  6  dbms_output.put_line(dataa.Sub_division || ' | ' || dataa.Land_type || ' | ' || dataa.Usage_purpose);
  7  end loop;
  8  end;
  9  /

Procedure created.
-------------------------------
--Displaying the details of Registered,Not registered and Forest area users.

SQL> exec "Show_Registered_Land_Details";
245 | 62910384591 | Nuzvid | Dry | Agriculture
238 | 62981000000 | Nuzvid | wet | Agriculture

PL/SQL procedure successfully completed.

SQL> exec "Show_Not_Registered_Land_Details";
kadapa | dry | Agriculture

PL/SQL procedure successfully completed.

SQL> exec "Show_Not_Registered_Land_Details";
Vissannapet | dry | Housing

PL/SQL procedure successfully completed.
---------------------------------------------
Insert some more data..
After inserting some sample data.

SQL> exec "Show_Registered_Land_Details";
245 | 62910384591 | Nuzvid | Dry | Agriculture
238 | 62981000000 | Nuzvid | wet | Agriculture
278 | 62718293059 | Chatrai | Dry | Agriculture
218 | 69876951204 | Agiripally | Wet | Agriculture
241 | 69873951204 | Nuzvid | Dry | House
275 | 65873943204 | RamaChandhrapuram | Wet | Agriculture
347 | 69873551284 | Eluru | Wet | Fishery
294 | 68934502104 | Nuzvid | Dry | Housing
312 | 66876351204 | Agiripally | Wet | Agriculture
353 | 67834920182 | Eluru | Dry | Agriculture
210 | 71029387465 | Vjd | Dry | Housing
280 | 60973943204 | RamaChandhrapuram | Wet | Agriculture

PL/SQL procedure successfully completed.
------------------------------------------------
SQL> exec "Show_Not_Registered_Land_Details";
Vissannapet | dry | Housing
Eluru | Wet | Agriculture
Nuzvid | Dry | Agriculture
Chatrai | Dry | Housing
Agiripally | Wet | Fishery
Vjd | Wet | Fishery
Nuzvid | Dry | Agriculture
Nuzvid | Wet | Agriculture
---------------------------------
SQL> exec "Show_Forest_Land_Details";
kadapa | dry | Agriculture
Nuzvid | Wet | Agriculture
Eluru | Dry | Agriculture
Vissannapet | Wet | Fishery
Ramachandhrapuram | Wet | Fishery
Vissannapet | Wet | Agriculture
Vjd | Dry | Agriculture

PL/SQL procedure successfully completed.
------------------------------------
--Finding the details of registered land users.

create or replace procedure "Reg_users_details"
as
begin
for dataa in(select User_name,Adharnumber,Pan_number,City,
		State,No_of_acres,Phone_number 
		from land_users_data where status='Registered')
loop
dbms_output.put_line(dataa.User_name || ' | ' || 
			dataa.Adharnumber || ' | ' || 
			dataa.Pan_number|| ' | ' ||
		  	dataa.City || ' | ' || 
			dataa.State || ' | ' || 
			dataa.No_of_acres || ' | ' || 
			dataa.Phone_number);
end loop;
end;
/
----------------------------------
SQL> exec "Reg_users_details"
Ranbeer | 526601057771 | EH012389H1 | Krishna | Andhrapradesh | 4 | 9291752838
Gopi | 634015238273 | EHQ0891649 | Kadapa | Andhrapradesh | 2.41 | 8692756410
Raja | 536601050771 | EHQ8749231 | Krishna | Andhrapradesh | 5 | 7382940428
Harish | 728194023458 | QG01267534 | Kadapa | Andhrapradesh | 4.51 | 8230919475
Ayyapa | 566180123601 | EHGQ018961 | Krishna | Andhrapradesh | 3.57 | 7382940437
Ramana | 543942018612 | GRQ0912645 | Kadapa | Andhrapradesh | 5.31 | 8688530538
Srinivasarao | 561023454571 | EQH0182396 | Godavari | Andhrapradesh | 3.74 |
7639120463

PL/SQL procedure successfully completed.
---------------------------------------
--Used cursor to fetch data(not registered land users data).
SQL> declare
  2  User_name varchar(16);
  3  Adharnumber number(12);
  4  No_of_acres number(5,3);
  5  Phone_number number(10);
  6  cursor c1 is
  7  select User_name,Adharnumber,No_of_acres,Phone_number from land_users_data where status='Not_yet_Registered';
  8  begin
  9  open c1;
 10  loop
 11  fetch c1 into User_name,Adharnumber,No_of_acres,Phone_number;
 12  exit when c1%notfound;
 13  dbms_output.put_line(User_name || ' | ' || Adharnumber || ' | ' || No_of_acres || ' | ' ||
 14  Phone_number);
 15  end loop;
 16  end;
 17  /
Venkatesh | 630018239437 | 6.23 | 7392840329
Ramu | 567101048273 | 7.3 | 8567949152
Yaswanth | 650128734301 | 8.23 | 9872192306
Laxmanrao | 560108913095 | 6.4 | 7684103932

PL/SQL procedure successfully completed.
-----------------------------------------
--Fetching the details of user through Adharnumber.
declare
User_name varchar(16);
No_of_acres number(5,3);
Phone_number number(10);
Pan_number varchar(10);
Status varchar(18);
cursor c2 is 
select User_name,No_of_acres,Phone_number,Pan_number,Status from land_users_data where Adharnumber=567101048273;
begin
open c2;
loop
fetch c2 into User_name,No_of_acres,Phone_number,Pan_number,Status;
exit when c2%notfound;
dbms_output.put_line(User_name || ' | ' ||  No_of_acres || ' | ' || 
			Phone_number || ' | ' || Pan_number || ' | ' ||
			 Status);

end loop;
end;
/
 
Ramu | 7.3 | 8567949152 | GHQ9823015 | Not_yet_Registered

PL/SQL procedure successfully completed.
-----------------------------------------------------
--Update the users_data when required.
--Creating trigger to show difference between old data to new data.

 create or replace trigger dis_show_diff 
 before delete or insert or update on 
 land_users_data for each row 
 when (new.no_of_acres>0)
    declare
    no_of_ac number(5,3);
    begin
    no_of_ac:=:new.no_of_acres-:old.no_of_acres;
    dbms_output.put_line(no_of_ac);
   end;
    /
--Updating the details of specific user.
declare
no_of_ac number;
begin
update land_users_data set no_of_acres=no_of_acres+2 where Adharnumber=728194023458;
end;
/