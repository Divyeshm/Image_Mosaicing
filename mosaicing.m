function [ temp ] = mosaicing( img1,img2,a,b )
% general function 
%Convert image to double precision
img1=im2double(img1);
img2=im2double(img2);
% call homography function to calculate homography matrix
H=homography(a(1),a(2),a(3),a(4),a(5),a(6),a(7),a(8),b(1),b(2),b(3),b(4),b(5),b(6),b(7),b(8));
% call projected points function 
[x1,y1,x2,y2,x3,y3,x4,y4]=projected_points(img2,H);
% corners points of both images
corners=[x1 y1;x2 y2;x3 y3;x4 y4;1 1;1 ,size(img1,1);size(img1,2), 1;size(img1,2),size(img1,1)];
% call min_max_offset function
[max_height,max_width,x_offset,y_offset]=max_min_offset(corners);
% create new image with max height and max width
temp = zeros(max_height,max_width);
temp=im2double(temp);
% call image1_copy function
temp=image1_copy(temp,img1,x_offset,y_offset);
% iterate each coordinate of new image and apply homography
for i=1:size(temp,1)
    for j=1:size(temp,2)
        % projected points after applying homography
        projected_point= [j, i, 1]*H;
a1=projected_point(1,1)/projected_point(1,3);  % points in image 2
b1=projected_point(1,2)/projected_point(1,3);
a1=round(a1); % rounding values
b1=round(b1);
if(a1>=1 && b1>=1 && a1<=size(img2,2) && b1<=size(img2,1))
    temp(i+y_offset,j+x_offset,1)=img2(b1,a1,1);    %red channel
     temp(i+y_offset,j+x_offset,2)=img2(b1,a1,2);   % green channel
      temp(i+y_offset,j+x_offset,3)=img2(b1,a1,3);  % blue channel
end
    
    end
end
end