create database registerform
use registerform
create table person(firstname varchar(20) not null,
                     lastname varchar(20) not null,
                     emailid varchar(100) unique,
                     username varchar(20) not null,
                     password varbinary(30) not null,
                     confirmpassword varbinary(30) not null)
                     select *from person