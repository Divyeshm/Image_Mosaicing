function [max_height,max_width,x_offset,y_offset ] = max_min_offset( corners )
% function to calculate min , max , x offset , y offset values of x and y 
MAX_X=0;
for i=1:8
if MAX_X<= corners(i,1)      % max x calculation
MAX_X=corners(i,1);
end
end

MAX_Y=0;
for i=1:8
if MAX_Y<= corners(i,2)      % max y calculation
MAX_Y=corners(i,2);
end
end


MIN_X=0;
for i=1:8
if MIN_X>= corners(i,1)      % min x calculation
MIN_X=corners(i,1);
end
end


MIN_Y=0;
for i=1:8
if MIN_Y>= corners(i,2)      % min y calculation
MIN_Y=corners(i,2);
end
end


max_height=round(MAX_Y-MIN_Y);     % maximum height of new image 
max_width=round(MAX_X-MIN_X);      % maximum width of new image
x_offset=round(abs(MIN_X));        % x offset
y_offset=round(abs(MIN_Y));        % y offset
end