%
%
% Planetary orbit using second order Runge-Kutta method.
% by Kevin Berwick,
% based on 'Computational Physics' book by N Giordano and H Nakanishi
% Section 4.1
%
%

npoints = 500;
dt = 0.002;    % time step in years

t = 0;
x = 1;         % initialise position of planet in AU
y = 0;
v_x = 0;       % initialise x velocity of planet in AU/yr
v_y = 2*pi;    % initialise y velocity of planet in AU/yr

% Plot the Sun at the origin
plot(0,0,'oy','MarkerSize',30, 'MarkerFaceColor','yellow');
axis([-1 1 -1 1]);
xlabel('x(AU)');
ylabel('y(AU)');
hold on;

for step = 1:npoints-1;

    % loop over the timesteps
    radius = sqrt(x^2+y^2);

    % Compute Runge Kutta values for the y equations
    y_dash = y+0.5*v_y*dt;
    v_y_dash = v_y - 0.5*(4*pi^2*y*dt)/(radius^3);

    % update positions and new y velocity
    y_new = y+v_y_dash*dt;
    v_y_new = v_y-(4*pi^2*y_dash*dt)/(radius^3);

    % Compute Runge Kutta values for the x equations
    x_dash = x+0.5*v_x*dt;
    v_x_dash = v_x - 0.5*(4*pi^2*x*dt)/(radius^3);

    % update positions using newly calculated velocity

    x_new = x+v_x_dash*dt;
    v_x_new = v_x-(4*pi^2*x_dash*dt)/(radius^3);
    
    % Plot planet position immediately
    plot(x_new,y_new,'.');
    drawnow;
    
    % Update x and y velocities with new velocities
    v_x = v_x_new;
    v_y = v_y_new;
    
    % Update x and y with new positions
    x = x_new;
    y = y_new;

end;