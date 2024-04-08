
% A matlab program to print win, lose, or roll again for a 2 dice rolling
% game.

entrance = input('To roll the dice press Y\n', 's');
if entrance == 'Y' || 'y'
    x = ceil(6*rand);
    y = ceil(6*rand);
    sum= x+y;
    if (x+y) == 7 || (x+y) == 11
       fprintf("The sum is %d, WIN.", sum);
    elseif (x+y) == 2 || (x+y) == 3 || (x+y) == 12
       fprintf("The sum is %d, LOSE", sum);
    else 
       fprintf("The sum is %d, ROLL AGAIN", sum);
    end
end

