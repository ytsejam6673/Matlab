% isequal
% == cannot compare arrays with different lengths
% use isequal when comparing arrays

a = [1 2 3 4];
b = [1 2 3 4];

if isequal(a,b)   % a == b --> program stops with error
    disp('hello')
end
