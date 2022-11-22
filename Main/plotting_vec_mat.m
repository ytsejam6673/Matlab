%% Plotting vector
v = [1 3 2 4];
figure(1), plot(v, 'r-');
figure(2), plot(v, 'bs');
figure(3), stem(v);
figure(4), bar(v);
%% Plotting matrix
M = [1 3 2 4 8 3 5; 2 6 1 2 4 5 2]' ;
figure(5), plot(M);
figure(6), bar(M);