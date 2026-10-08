create database Crime;
use Crime;
create table Scenerios(
ID int,
DR_NO int,
Date_Rptd varchar(100),
DATE_OCC varchar(100),
TIME_OCC varchar(100),	
AREA int,
AREA_NAME Varchar(100),
Rpt_Dist_No int,
Part_1_2 int,
Crm_Cd int,
Crm_Cd_Desc	varchar(100),
Mocodes varchar(255),
Vict_Age int,
Vict_Sex varchar(100),
Vict_Descent varchar(100),
Premis_Cd int,
Premis_Desc varchar(100),
Weapon_Used_Cd int,
Weapon_Desc varchar(100),
status varchar(100),
Status_Desc varchar(100),
Crm_Cd_1 int,
Crm_Cd_2 int,
Crm_Cd_3 int,
LOCATION varchar(100),
LAT varchar(100),
LON varchar(100)
);
select * from Scenerios;
load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Crime_Data.csv'
into table Scenerios
fields terminated by','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows
(ID, DR_NO, Date_Rptd, DATE_OCC, TIME_OCC, AREA, AREA_NAME, Rpt_Dist_No, Part_1_2, Crm_Cd, Crm_Cd_Desc, Mocodes, Vict_Age, Vict_Sex, Vict_Descent, Premis_Cd, Premis_Desc, Weapon_Used_Cd, Weapon_Desc, Status, Status_Desc, Crm_Cd_1, Crm_Cd_2, Crm_Cd_3, LOCATION, LAT, LON);

alter table Scenerios
modify column mocodes
varchar(255);

alter table Scenerios
modify column Weapon_Used_Cd
varchar(255);

alter table Scenerios
modify column Crm_Cd_1
varchar(255);

show variables like 'secure_file_priv';

select * from Scenerios;


