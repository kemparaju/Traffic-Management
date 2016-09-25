function [] = sgreen(vid ,dper)

if dper >= 0 && dper < 20
    disp('GREEN') , pause(5);
	stimer(20);
   
end

if dper >= 70 && dper < 80 
	disp('GREEN') , pause(5);
	stimer(10);

elseif dper >= 80 && dper < 90
	disp('GREEN') , pause(5);
	stimer(20);


elseif dper >= 90 && dper <= 100
	disp('GREEN') , pause(5);
	stimer(30)

end

end