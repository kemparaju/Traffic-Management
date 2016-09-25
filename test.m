clear all

vid  = videoinput('winvideo' , 1 , 'RGB24_640x480');
set(vid , 'ReturnedColorSpace' , 'grayscale');

subplot(2,2,1);
m1 = getsnapshot(vid);
imshow(m1);
title('Reference');

wait = input('enter..' , 's');
m2 = getsnapshot(vid);

m3 = imsubtract(m1  , m2);
subplot(2,2,2);
imshow(m3);
title('Subtracted Image');

%d = edge(m3 , 'canny' , .6);

%imshow(d);
%m3 = medfilt2(m3);
bin = im2bw(m3 , 0.18);

subplot(2,2,3);
imshow(bin);
title('Binary Image');

bin = bwareaopen(bin ,300);
bin = bwconvhull(bin , 'objects');
%bin = imfill(bin , 'holes');

subplot(2,2,4);
imshow(bin);
title('imfill');


[bw , n] = bwlabel(bin , 4);
%disp(n);

stats = regionprops(bw ,'BoundingBox' ,'centroid');
disp(length(stats));

