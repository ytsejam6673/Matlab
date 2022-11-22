% tsetreturn.m
% In nested loop, causes a return to the invoking function or to the keyboard.

for i = 1 : 4        % outer loop
    for j = 1 : 5    % inner loop

        if j == 3
            return   % change it to continue or break
        end

        disp([i j])
    end              % inner loop
end                  % outer loop
