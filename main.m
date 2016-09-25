clear
clear all

vid = videoinput('winvideo' , 1 , 'RGB24_640x480');
set(vid,'ReturnedColorSpace' , 'rgb');

density = input('Density -> ');

first_frame = getsnapshot(vid);
first_frame = rgb2gray(first_frame);

crop_image = crop(first_frame);

wait = input('Press Enter.....' , 's');
while true
    
    cyellow();
 	dper = gdensity(vid , density , first_frame , crop_image);

	show(vid, dper);

end

flushdata(vid);

clear all;
