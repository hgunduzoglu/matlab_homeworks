

% A matlab program to calculate the seconds required to cook an egg in total and time takes in each step

disp("Welcome to Egg Counter! Calculate the seconds required to cook an egg!\n");
m = input("What is the mass of the egg? (Small:  47g, Large:  67g)\n");
c = 3.7;
p = 1.038;
T_yolk1_initial = 4;
T_yolk1_desired = 20;
T_yolk2_initial = 20;
T_yolk2_desired = 70;
T_room = 25;
T_boiling = 100;
t_step1 = (m^(2/3) * c * p^(1/3))/(0.13849) *  log((0.76)*(T_yolk1_initial - T_room)/(T_yolk1_desired - T_room));
t_step2 = (m^(2/3) * c * p^(1/3))/(0.13849) *  log((0.76)*(T_yolk2_initial - T_boiling)/(T_yolk2_desired - T_boiling));
t_total = t_step1 + t_step2;
fprintf("In the first step, you need %.2f seconds to make the egg at the desired temperature.\n", t_step1);

fprintf("In the second step, you need %.2f seconds to make the egg at the desired temperature.\n", t_step2);

fprintf("You need %.2f seconds in total to cook the egg", t_total);