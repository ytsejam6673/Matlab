% Sum of integers written with while-loop

N = input('N = ');
s = 0;
i = 0;

while i < N          % or while i <= N
      i = i + 1;     % or       s = s + i;
      s = s + i;     % or       i = i + 1;
end                  % or end

disp('answer: ')
disp(s)
