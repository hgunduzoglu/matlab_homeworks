

% A matlab program generates random real numbers between (0,1) until sum of
% the numbers is greater than 1.
clear
clc

sum = 0;
step = 1;
step_sum = 0;
for i = 1:10^7   % I thought 10^7 iterations are sufficient.
    while sum <= 1
        a = rand();
        sum = sum+a;
        step = step+1;
    end
    sum = 0;
    step_sum = step_sum + step;
    step = 0;
    
end
expected = step_sum / i ;

fprintf("Expected value of iterations is: %.5f", expected);

% I run the code above many times. However almost always the expected value
% was 2.72. When I tried to display more than 3 digits, the expected value
% starts to vary. However, since the number or trials cannot be a float
% number; the expected number of iterations can be considered as 3. It
% should be kept in mind, the number of iterations could be even infinity
% since there are infinitely small numbers between 0 and 1.