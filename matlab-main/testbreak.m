% tsetbreak.m
% break : terminates loop
% In nested loop, BREAK exits from the loop that it belongs to

for i = 1 : 4        % outer loop
    for j = 1 : 5    % inner loop

        if j == 3
            break    % change it to continue or return
        end

        disp([i j])
    end              % inner loop
end                  % outer loop
