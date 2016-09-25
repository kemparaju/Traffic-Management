function [Out] = crop(a)

%a = imread('refer.jpg');
%a = rgb2gray(a);
%bin = a;
%fprintf('This is original size');
%size(a)

%vid  = videoinput('winvideo' , 1 , 'RGB24_640x480');
%set(vid , 'ReturnedColorSpace' , 'grayscale');
%a = getsnapshot(vid);
imshow(a);

[r c]=ginput(4);


BW = roipoly(a,r,c);

%figure , imshow(BW)

[R C]=size(BW);

for i=1:R
    for j=1:C
        
        if BW(i,j)==1
            
            Out(i,j)=a(i,j);
            
        else
            
            Out(i,j)=0;
        end
    end
end

%bin = im2bw(bin);
%bin = bin;
%fprintf('Size of binary image');
%size(bin)

%fprintf('size of cropped image');
%size(Out)


%z = bin * Out;

%subplot(1,2,1);
%figure;
imshow(Out);title('Cropped image');
%subplot(1,2,2); imshow(z);title('Multiplied image');

end

