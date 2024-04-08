% A matlab program to calculate the surface area of an oblate spheroid.

equatorial_radius = input("Please enter equatorial radius of the oblate spheroid you want to calculate its area: \n");
polar_radius = input("Please enter polar radius of the oblate spheroid you want to calculate its area: \n");
degree = acos(polar_radius / equatorial_radius);
area = 2 * pi * ((equatorial_radius^2) + (((polar_radius^2)/sin(degree)) * log((cos(degree)/(1-sin(degree))))));

approximation = 4 * pi * ((equatorial_radius + polar_radius)/2)^2;

fprintf("the area is %.5f\n", area);
fprintf("the approximate area is %.5f", approximation);
