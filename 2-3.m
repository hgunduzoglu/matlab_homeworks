

% A matlab program to calculate monthly payment, equivalent simple interest rate and total interest paid for a house bought.

A = input("Please enter the cost of the home you want to buy\n");
B = input("Please enter the down payment percentage\n");
C = input("Please enter the annually compound interest rate of the debt\n");
C = C/100; % updated to obtain percentage

debt_of_house = A - (A*B/100);

% formula for compound interest is "principal*(1+(interest rate))^year"
% to find total payment in 30 years; we should use 30th power. Then to find
% monthly payment, we need to divide the amount to 30*12
% considering the debt will be paid in 30 years 
total_payment = debt_of_house*((1+C)^30);
average_monthly_payment = total_payment/(30*12);
total_interest = total_payment - debt_of_house;
% equivalent simple interest formula is total interest / (time * principal)
equal_simple_rate = total_interest * 100 / (30 * debt_of_house); % *100 is to obtain percentage 
fprintf("The average monthly payment for a 30-year loan is %.2f dollars\n",average_monthly_payment);
fprintf("The equivalent simple interest rate is %.2f percent \n", equal_simple_rate);
fprintf("The total interest paid over the life of the loan is %.2f dollars", total_interest);
