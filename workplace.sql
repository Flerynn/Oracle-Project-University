declare
	cursor cur is (select * from Login_CUS);
	FF int:=0;
	rx int:=0;
	V_CID int;
	V_LID int;
begin
	FOR record IN cur
	LOOP
	   if :Login.USERNAME_LOGIN = record.UserName then
	   	FF:=1;
	   end if;
	END LOOP;
	if FF = 1 then 
		message('UserName exist !');
		message('UserName exist !');
		clear_block;
	else 
		insert into CUSTOMER values(CUS_SEQ_SignUP.curval,:Login.FNAME_LOGIN,:Login.LNAME_LOGIN);
		insert into Login_CUS values(CUS_SEQ_SignUP.curval,:Login.USERNAME_LOGIN,:Login.PASSWORD_LOGIN,'N',CUS_SEQ_SignUP.nextval);

	end if;
end;









declare
	cursor cur is (select * from Movies);
	FF int:=0;
begin
	if :CREAT_MOVIE_EMP.MID is not null then
			FOR record IN cus
				LOOP
				   if (lower(record.UserName) = lower(:LOGIN.USERNAME) and
				   	record.Password= :LOGIN.Password) then
				   		FF:=1;
				   	end if;
				END LOOP;
		if sql%found then
			message('ID exist ..');
			message('ID exist ..');
		else
			insert into movies values(
				:CREAT_MOVIE_EMP.MID,
				:CREAT_MOVIE_EMP.Name,
				:CREAT_MOVIE_EMP.DIRECTOR,
				:CREAT_MOVIE_EMP.duration,
				:CREAT_MOVIE_EMP.Time,
				:CREAT_MOVIE_EMP.Rate
				);
			commit;
			message('Done !!');
			message('Done !!');
		end if;
	else 
		message('Enter ID');
		message('Enter ID');
	end if;
exception
		when no_data_found then
		null;
end;