
% A matlab program to calculate the weekday of given date given that 24
% March 2024 is monday. Moreover, find the difference between the given date and 24 March 2024. Also a year is assumed to be 360 days and a month
% is assumed to be 30 days.

clear
clc
day = input("Enter the day (from 1 to 30):  \n");
month = input("Enter the month (from 1 to 12): \n");
year = input("Enter the year: \n");

% converting dates to an integer to be able to get the difference
% between dates numerically.

given_date = 360 * (year-1) + 30 * (month - 1) + day;
base_date = 360 * (2024 - 1) + 30 * (3 - 1) + 24;

difference = given_date - base_date;
remaining = mod(difference, 7);
 if remaining == 0
        disp("It is Monday");
 elseif remaining == 1
        disp("It is Tuesday");
 elseif remaining == 2
        disp("It is Wednesday");
 elseif remaining == 3
        disp("It is Thursday");
 elseif remaining == 4
        disp("It is Friday");
 elseif remaining == 5
        disp("It is Saturday");
 else
        disp("It is Sunday");
 end

 if difference > 0
    years_difference = floor(difference / 360);

    month_difference = floor((difference - years_difference*360)/30);

    day_difference = difference - years_difference*360 - month_difference*30;

   
else
    difference = -difference;
    years_difference = floor(difference / 360);

    month_difference = floor((difference - years_difference*360)/30);

    day_difference = difference - years_difference*360 - month_difference*30;

   

end

fprintf("The difference between 24.3.2024 and %d.%d.%d is %d year(s) %d month(s) %d day(s).",day, month, year, years_difference, month_difference, day_difference);
        


   