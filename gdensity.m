function [ density_per ] = gdensity(vid , density , first_frame , crop_image)
    
	data = getsnapshot(vid);
    diff_im = imsubtract(first_frame ,rgb2gray(data));

    diff_im = im2bw(diff_im , 0.18);
    diff_im = diff_im.*crop_image;

    diff_im = bwareaopen(diff_im ,300);
    diff_im = bwconvhull(diff_im , 'objects');

    bw = bwlabel(diff_im , 4);

    stats = regionprops(bw ,'BoundingBox' ,'centroid');
    n = length(stats);

    imshow(data)
    hold on

    for(object=1:length(stats))
        bb = stats(object).BoundingBox;
        bc=stats(object).Centroid;
    
        %we use rectangular function to draw rectangles with data from
        %variables bb,bc
        
        rectangle('Position' ,bb,'EdgeColor','r','LineWidth',2);
        
        %use plot function to plot the rectangles drawn in the output
        
        plot(bc(1) , bc(2) ,'-m+');
        
    end

    hold off

    density_per = (n/density) * 100;

end