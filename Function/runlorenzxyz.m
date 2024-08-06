function runlorenzxyz(aa)
    global r
        r = aa;
        hold off
        tspan = [0; 100];
        u0 = [0; 1; 0];

        [t, u] = ode23(@lorenzode, tspan, u0);

        x = u(:,1);
        y = u(:,2);
        z = u(:,3);

        figure(1);
        plot3(x, y, z);
        comet3(x, y, z, 0.0001);
        grid on;
        title('Lorenz Attractor');
        xlabel('X');
        ylabel('Y');
        zlabel('Z');
end

