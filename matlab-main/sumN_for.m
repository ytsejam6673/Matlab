% Sum of integers written with for-loop

N = input('N = ');
s = 0;

for i = 1 : N
    s = s + i;
end

disp('answer: ')
disp(s)
