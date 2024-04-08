
%A matlab program to determine state of a randomly dropped pen with lenght of 0.8 on a  table with area 10 unit^2.
clear
clc

table_length = 10;
table_width = 10;
pen_length = 0.8;
angle = rand()*2*pi; % angle between pen and x-axis
d=1; % distance between 2 parallel lines

tip1_x = rand()*table_width;  %  generate x coordinate of one tip of the pen
tip1_y = rand()*table_length;  %  generate y coordinate of one tip of the pen

tip2_x = tip1_x + pen_length*cos(angle); % determine x coordinate of  other tip of the pen using length and angle
tip2_y = tip1_y + pen_length*sin(angle);  % determine y coordinate of  other tip of the pen using length and angle

center_x = (tip1_x + tip2_x)/2;     % determine x coordinate of the center
center_y = (tip1_y + tip2_y)/2;     % determine x coordinate of the center
y_top = max(tip1_y, tip2_y);       % determine upper tip of the pen
y_bottom = min(tip1_y, tip2_y);    % determine lower tip of the pen

if center_x <0 || center_x >10 || center_y <0 || center_y > 10   % if the center is out of the table, the pen falls down
    disp("Pen falls down");
else
    if ((rem(center_y,1) > rem(tip1_y,1)) && (rem(center_y,1) < rem(tip2_y,1))) || ((rem(center_y,1) > rem(tip2_y,1)) && (rem(center_y,1) < rem(tip1_y,1)))   % if the pen is between any 2 horizontal lines no intersection
            disp("No intersection");
    else
        if floor(y_top) == ceil(y_bottom)
            line = ceil(y_bottom);
            if center_x >5 && (line == 0 || line == 2 || line == 4 || line == 6 || line == 8 || line == 10)    %  if center of the pen is in right side of the table check the solid lines in that side for intersection
                disp("Intersection");
            elseif center_x < 0 && (line == 1 || line == 3 || line == 5 || line == 7 || line == 9)     %  if center of the pen is in left side of the table check the solid lines in that side for intersection
                disp("Intersection");
            else
                disp("No intersection");  % in cases that pen is intersects with dashed lines. Also if the x coordinate of the center of the pen  is exactly in the middle of table, no intersection.
            end
        end
    end
end



