
% A matlab program to calculate area under a curve of given function within
% given interval using upper, lower and mid Riemann sums.

clear
clc
sur = 0;
slr = 0;
smr = 0;
lower = -2;
upper = 2;
real = 5.5243913822;
for n = 5:5:100
    interval = (upper-lower)/n;
    for x = lower:interval:upper-interval
        func = exp(x) - 1;
        slr = slr + (func *interval);
    end
    for x = lower+interval:interval:upper
        func = exp(x) - 1;
        sur = sur + (func*interval);
    end
    for x = lower+(interval/2):interval:upper-(interval/2)
        func = exp(x) - 1;
        smr = smr + (func*interval);
    end
    re_sur = abs(real-sur)/real;
    re_slr = abs(real-slr)/real;
    re_smr = abs(real-smr)/real;
    difference = sur - slr;
    fprintf("for n = %d \n RE-SUR = %.3f, RE-SLR = %.3f, RE-SMR = %.3f, Difference = %.10f \n",n, re_sur, re_slr, re_smr, difference);
end

% as n getting larger, the relative errors for three of them and difference
% get larger. However relative errors of lower rectangles and mid
% rectangles methods are decreasing after a point which is the point that
% is closest to the real area, and then relative error is increasing.
