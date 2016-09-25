function [] = stimer(n)
    tsec = 1:n;
    tsec = fliplr(tsec);
	for t = tsec
		clc;
		disp(t);
		pause(1);
	end
end