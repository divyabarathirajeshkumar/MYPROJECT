create database Mypro
use Mypro
create Table signin(First_name varchar(100), Last_name varchar(100), Email varchar(100),
user_nam varchar(100) primary key,pass_word varchar(200));
select*from signin
insert into signin values('Priya','Dharshini','priya@gmail.com','PriRose','pri321'),
('Rose','kitty','Rose190@gmai.com','Rosekutty','Rose321'),
('Harini',' ','Haa234@gmail.com','HariniRoc','papu321'),
('ashu','Vanth','ashu321@gmail.com','Ashuthe don','ashu32');
create Table A_login(User_nam varchar(100) primary key, pass_word varchar(100), type varchar(50));
insert into A_login values( 'admin','321','admin'),('user','123','user');
select*from A_login