DROP procedure if exists pro1;

delimiter $
create PROCEDURE pro1(uname varchar(20), pwd varchar(20), email varchar(20))

BEGIN

	declare exit handler for 1062 select "Record already found" as message;
	insert into login values(uname, pwd, email);
	select * from login;
	
	
	
end $ 
delimiter $