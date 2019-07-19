function [ temp ] = image1_copy( temp,img1,x_offset,y_offset )
% function to copy image 1 to canvas taking care of offsets
for i=1:size(img1,1)
    for j=1:size(img1,2)
         temp(i+y_offset,j+x_offset,1)=img1(i,j,1);  % copy intensity values
        temp(i+y_offset,j+x_offset,2)=img1(i,j,2);
        temp(i+y_offset,j+x_offset,3)=img1(i,j,3);
       
    end
 end
figure, imshow(temp);

end