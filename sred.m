function[] = sred(vid , dper)

	if dper >=20 && dper < 30
		disp('RED')  , pause(5);
		stimer(40);
	elseif dper >= 30 && dper < 40
		disp('RED') , pause(5);
		stimer(30);

    elseif dper >=40 && dper < 50
    	disp('RED') , pause(5);
		stimer(35);

	elseif dper >= 50 && dper < 60
		disp('RED') , pause(5);
		stimer(20);

	elseif dper >= 60 && dper <70
		disp('RED') , pause(5);
		stimer(10);
	end


end