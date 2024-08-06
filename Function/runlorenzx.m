function runlorenzx(x)
    global r

        tspan   = [0; 50];
        u0      = [0; 1; 0];

        %%%

        r=x ;

        [t, u] = ode23( @lorenzode, tspan, u0);

        x1=u(:,1);
        y=u(:,2);
        z=u(:,3);

        figure(1)
        hold on
        plot(t, x1,'k')

        %%%

        r = r + 0.00001

        [t, u] = ode23( @lorenzode, tspan, u0);
        x2=u(:,1);
        y=u(:,2);
        z=u(:,3);

        figure(1)
        hold on
        plot(t, x2,'r')
