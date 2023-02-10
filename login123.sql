create table registrationtab(username varchar(100),password varchar(20))
create procedure ll_login
as 
begin
select * from registrationtab
end
go
exec ll_login

