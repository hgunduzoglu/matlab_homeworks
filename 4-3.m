
% A matlab program to estimate area under the curve of given function within 
% given interval using monte carlo approximation.

clear
clc

lower = -2;
upper = 2;
in = 0;
iterations = 10^6 ;
fmax = 1;
for i=1:iterations
    x = (rand() *  (upper - lower)) - upper;
    y = rand() * fmax;
    func = (cos(1/x))^2;

    if y <= func
        in = in+1;
    end
end
area = (in / iterations) * (upper - lower) ;
fprintf("The estimated area under the given function in given interval is %.3f", area);