% 초기 조건 및 물리 상수 설정
g = 9.81; % 중력 가속도 (m/s^2)
l1 = 3.0; % 상단 진자의 길이 (m)
l2 = 3.0; % 하단 진자의 길이 (m)
m1 = 3.0; % 상단 진자의 질량 (kg)
m2 = 3.0; % 하단 진자의 질량 (kg)

% 초기 각도 및 각속도 설정 (라디안)
theta1_initial = 1.5521; % 상단 진자의 초기 각도
theta2_initial = pi/3; % 하단 진자의 초기 각도
omega1_initial = 0.0; % 상단 진자의 초기 각속도
omega2_initial = 0.0; % 하단 진자의 초기 각속도

% 시뮬레이션 설정
tspan = [0 90]; % 시간 범위 (0초에서 10초까지 시뮬레이션)
initial_conditions = [theta1_initial, theta2_initial, omega1_initial, omega2_initial];

% 미분 방정식 정의44
odefun = @(t, y) double_pendulum_ode(t, y, g, l1, l2, m1, m2);

% 시뮬레이션 실행
[t, y] = ode45(odefun, tspan, initial_conditions);

% 결과 플롯
figure;
plot(t, y(:,1), 'r', t, y(:,2), 'b');
title('이중진자운동 시뮬레이션');
xlabel('시간 (초)');
ylabel('각도 (라디안)');
legend('상단 진자', '하단 진자');
xlim([0,90]) % 시간축 스케일 설정
ylim([-10,10]) % 각도축 스케일 설정
function dydt = double_pendulum_ode(t, y, g, l1, l2, m1, m2)
    theta1 = y(1);
    theta2 = y(2);
    omega1 = y(3);
    omega2 = y(4);
    
    % 각 진자의 미분 방정식
    dydt = zeros(4, 1);
    dydt(1) = omega1;
    dydt(2) = omega2;
    dydt(3) = (-g*(2*m1+m2)*sin(theta1) - m2*g*sin(theta1-2*theta2) - 2*sin(theta1-theta2)*m2*(omega2^2*l2+omega1^2*l1*cos(theta1-theta2))) / (l1*(2*m1+m2-m2*cos(2*theta1-2*theta2)));
    dydt(4) = (2*sin(theta1-theta2)*(omega1^2*l1*(m1+m2)+g*(m1+m2)*cos(theta1)+omega2^2*l2*m2*cos(theta1-theta2))) / (l2*(2*m1+m2-m2*cos(2*theta1-2*theta2)));
end
