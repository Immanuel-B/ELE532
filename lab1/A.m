%part a.1
%A.1  Plot
f = @(t) exp(-t) .* cos(2 * pi * t);
t = -2:2;    
figure(2);
plot(t, f(t)); 
xlabel('t');
ylabel('f(t)');
grid on;

h = @(t) exp(-t);
q = -2:2;    
figure(3);
plot(q, h(t)); 
xlabel('q');
ylabel('h(t)');
grid on;

g = @(t) exp(-t) .* cos(2 * pi * t);
y = -2:0.01:2;    
figure(1);
plot(y, g(y)); 
xlabel('y');
ylabel('g(y)');
grid on;