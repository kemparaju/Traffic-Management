function [] = cyellow()
format shortg
c = clock();

while c(4) >=23 || c(4) < 7
	clc;
	disp('YELLOW') , pause(5);
	c = clock();
end 

end