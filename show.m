function [] = show(vid , dper)
	if dper >= 0 && dper < 20
		disp('Present density ');
		disp(dper);
		wait = input('Press Enter.....' , 's');
		sgreen(vid , dper);

	elseif dper >= 20 && dper < 70
		disp('Present density ');
		disp(dper);
		wait = input('Press Enter.....' , 's');
		sred(vid , dper);

	elseif dper >70 && dper <=100
		disp('Present density ');
		disp(dper);
		wait = input('Press Enter.....' , 's');
		sgreen(vid , dper)	 

	end

end