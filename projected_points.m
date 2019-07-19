function [ x1,y1,x2,y2,x3,y3,x4,y4 ] = projected_points( img2,H )
% function to apply inverse homography on corners of image 2
IH=inv(H);
trans_points=[1 1 1] * IH;
x1=trans_points(1,1)/trans_points(1,3);
y1=trans_points(1,2)/trans_points(1,3);

trans_points=[1,size(img2,1), 1] * IH;
x2=trans_points(1,1)/trans_points(1,3);
y2=trans_points(1,2)/trans_points(1,3);

trans_points=[size(img2,2),1, 1] * IH;
x3=trans_points(1,1)/trans_points(1,3);
y3=trans_points(1,2)/trans_points(1,3);

trans_points=[size(img2,2), size(img2,1), 1] * IH;
x4=trans_points(1,1)/trans_points(1,3);
y4=trans_points(1,2)/trans_points(1,3);


end