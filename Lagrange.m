clear;
clc;

format long;

N = input('Enter number of points: ');

for i=1:N
    x(i) = input(strcat('Enter x-value of point ', num2str(i), ':'));
    f(i) = input(strcat('Enter function value for point ', num2str(i), ':'));
end;

choice = 'yes';

while choice ~= 'n'

    a = input('Enter x-value to approximate: ');

    %calculate coeffcients
    for i=1:N
        nume = 1;
        denom = 1;
    
        for j=1:N
            if i ~= j
                nume = nume*(a - x(j));
                denom = denom*(x(i) - x(j));
            end;
        end;
    
        L(i) = nume/denom;
    end;

    disp('Approximation:');
    disp(sum(L.*f));

    disp(' ');
    choice = input('Enter any number to continue: ');
    disp(' ');
end;
