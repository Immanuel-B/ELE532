%c1
u = @(t) 1.0 .* (t >= 0);
f = @(t) exp(-2*t) .* cos(4*pi*t);
g = @(t) f(t) .* u(t);
t = (-2:0.01:2);
figure(1);
plot(t, g(2*t+1)); xlabel('t'); ylabel('g(2t+1)');grid;

%c2
y = -2:0.01:4;
u1 = @(y) 1.0 .* (y >= 0);
g2 = @(y) exp(-2) .* exp(-2 * y) .* cos(4 * pi * y) .* u1(y + 1);
figure(2);
plot(y, g2(y + 1)); xlabel('y'); ylabel('g(y+1)');grid;

%9 7 6  5