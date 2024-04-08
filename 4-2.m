
% A matlab program to find probabilities of states of a pen dropped through
% a table. The states are being on table with crossing 2 lines, crossing 1
% line, not crossing at all; falling down from table with crossing a line
% and without crossing a line.

clear
clc

table_length = 100;
table_width = 10;
pen_length = 1.2;

d=1; % distance between 2 parallel lines

intersection_one = 0;
intersection_two = 0;
falling_down_intersection = 0;
falling_down_no_intersection = 0;
for i=1:10^7
    angle = rand()*2*pi; % angle between pen and x-axis
    tip1_x = rand()*table_width;   %  generate x coordinate of one tip of the pen
    tip1_y = rand()*table_length;    %  generate y coordinate of one tip of the pen
    tip2_x = tip1_x + pen_length*cos(angle);   % determine x coordinate of  other tip of the pen using length and angle
    tip2_y = tip1_y + pen_length*sin(angle);   % determine y coordinate of  other tip of the pen using length and angle

    center_x = (tip1_x + tip2_x)/2;    % determine x coordinate of the center
    center_y = (tip1_y + tip2_y)/2;    % determine y coordinate of the center

    if center_x < 0 || center_x > 10 || center_y < 0 || center_y > 100
        
        if floor(tip2_y) == floor(tip1_y)
            falling_down_no_intersection = falling_down_no_intersection + 1;
        else
            falling_down_intersection = falling_down_intersection + 1;
        end
    else
        if floor(tip1_y) ~= floor(tip2_y)
            if (floor(tip1_y) == ceil(tip2_y)) || (floor(tip2_y) == ceil(tip1_y))
                intersection_one = intersection_one + 1;
            else
                intersection_two = intersection_two + 1;
            end
        end
    end
    
end

probab_on_table = 1 -((falling_down_intersection + falling_down_no_intersection)/i);
probab_two_lines = intersection_two / i;
probab_one_line = intersection_one / i;
probab_fall_inter = falling_down_intersection / i;
probab_fall_nointer = falling_down_no_intersection / i;

fprintf("Pen stays on the table with a probability of %.2f.\n" + ...
    "Pen stays on the table while intersecting two parallel lines with a" + ...
    " probability of %.2f.\nPen stays on the table while intersecting only " + ...
    "one of the parallel lines with a probability of %.2f.\n" + ...
    "Pen falls from the table without intersecting the parallel " + ...
    "lines with a probability of %.2f.\nPen falls from the table by intersecting " + ...
    "the parallel lines with aprobability of %.2f\n",probab_on_table, probab_two_lines, probab_one_line, probab_fall_nointer, probab_fall_inter);


