

% A matlab program to determine state of a randomly dropped pen with lenght of 0.8 on a
% table with area 10x10 unit^2.
clear
clc


table_length = 10;
table_width = 10;
pen_length = 0.8;
angle = rand()*2*pi; % angle between pen and x-axis
d=1; % distance between 2 parallel lines

tip1_x = rand()*table_width;   %  generate x coordinate of one tip of the pen
tip1_y = rand()*table_length;    %  generate y coordinate of one tip of the pen
tip2_x = tip1_x + pen_length*cos(angle);   % determine x coordinate of  other tip of the pen using length and angle
tip2_y = tip1_y + pen_length*sin(angle);   % determine y coordinate of  other tip of the pen using length and angle

center_x = (tip1_x + tip2_x)/2;    % determine x coordinate of the center
center_y = (tip1_y + tip2_y)/2;    % determine y coordinate of the center

if center_x < 0 || center_x >10 || center_y <0 || center_y > 10    % if the center is out of the table, the pen falls down
    if (0 < center_y && center_y < 10) && (center_x <0 || center_x >10)  
        if center_x < 5 && rem(angle,pi) > pi/2

            if ((rem(center_y,1) > rem(tip1_y,1)) && (rem(center_y,1) < rem(tip2_y,1))) || ((rem(center_y,1) > rem(tip2_y,1)) && (rem(center_y,1) < rem(tip1_y,1)))
                disp("Pen falls down with touching the line");
            else
                disp("Pen falls down without touching the line");
            end
        elseif center_x <5 && rem(angle,pi) < pi/2
            if ((rem(center_y,1) > rem(tip1_y,1)) && (rem(center_y,1) < rem(tip2_y,1))) || ((rem(center_y,1) > rem(tip2_y,1)) && (rem(center_y,1) < rem(tip1_y,1)))
                disp("Pen falls down without touching the line");
            else
                disp("Pen falls down with touching the line");
            end
        elseif center_x > 5 && rem(angle,pi) < pi/2
             if ((rem(center_y,1) > rem(tip1_y,1)) && (rem(center_y,1) < rem(tip2_y,1))) || ((rem(center_y,1) > rem(tip2_y,1)) && (rem(center_y,1) < rem(tip1_y,1)))
                disp("Pen falls down with touching the line");
            else
                disp("Pen falls down without touching the line");
             end
        elseif center_x > 5 && rem(angle,pi) > pi/2
            if ((rem(center_y,1) > rem(tip1_y,1)) && (rem(center_y,1) < rem(tip2_y,1))) || ((rem(center_y,1) > rem(tip2_y,1)) && (rem(center_y,1) < rem(tip1_y,1)))
                disp("Pen falls down without touching the line");
            else
                disp("Pen falls down with touching the line");
            end
        else 
            disp("Pen falls down without touching the line");
        end
    elseif (0 < center_x && center_x < 10) && (center_y < 0 || center_y > 10)  
        disp("Pen falls down with touching the line");
    else
        if ((rem(center_y,1) > rem(tip1_y,1)) && (rem(center_y,1) < rem(tip2_y,1))) || ((rem(center_y,1) > rem(tip2_y,1)) && (rem(center_y,1) < rem(tip1_y,1)))
            disp("Pen falls down with touching the line");
        else
            disp("Pen falls down without touching the line");
        end
    end
else
    if ((rem(center_y,1) > rem(tip1_y,1)) && (rem(center_y,1) < rem(tip2_y,1))) || ((rem(center_y,1) > rem(tip2_y,1)) && (rem(center_y,1) < rem(tip1_y,1)))   % if the pen is in between 2 horizontal lines no intersection
            disp("No intersection");
    else
        disp("Intersection");
    end
end
% this section is extra. I plot the pen and the table to check whether my
% algorithm works properly or not.
tips_x= [tip1_x tip2_x];
tips_y = [tip1_y tip2_y];
plot(tips_x, tips_y);
xlim([0 10]);
ylim([0 10]);
ax = gca;
ax.YGrid = 'on';
ax.GridLineStyle = '-';


