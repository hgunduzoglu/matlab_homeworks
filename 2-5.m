

% A matlab program to calculate the time needed for the second skydiver reach the first one and in what height they will meet in given circumstances.
% aerodynamic drag on an object formula: A = (1/2)*p*(V^2)*CdS
% An object falling through air reaches terminal velocity (V_t) when A equals the object s weight (W)
% Weights of skydivers = 80kg
p = 1.3;
W = 80;
A = W; % drag force is equal to the weight when terminal velocity is reached.
CdS_vertical = 0.15;
CdS_horizontal = 0.7;
% interesting in head down movement.
terminal_velocity_first = sqrt(2*A / (p*CdS_horizontal));
terminal_velocity_second = sqrt(2*A / (p*CdS_vertical));
altitude = 5000;
% time = distance covered /velocity  → distance covered = time * velocity

% the total distance they cover  head down will be equal when they meet each other.
% Hence we need to equate the distance they cover in vertical direction. We
% will end up an equation depends on t. We can solve for t.
% distance for skydiver 1 = (20+t)*velocity1  ;  distance for skydiver 2 =
% t*velocity 2
t = 20 * terminal_velocity_first / (terminal_velocity_second - terminal_velocity_first);
fprintf ("They will meet each other  %.2f seconds after the second diver's jump\n", t);
% height they face each other is total height - distance covered
X = altitude - (terminal_velocity_second * t);
fprintf("They will meet each other %.2f meters above the ground", X);
