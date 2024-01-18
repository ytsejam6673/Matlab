% tsetcontinue.m
% In nested loop, passes control to the next iteration.

for i = 1 : 4        % outer loop
    for j = 1 : 5    % inner loop

        if j == 3
            continue    % change it to break or return
        end

        disp([i j])
    end              % inner loop
end                  % outer loop
