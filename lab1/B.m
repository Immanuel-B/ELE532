h = @(q) 1.0.*((q>=0)&(q<1));
q = (-1:0.01:2);    
figure(3);
plot(q, h(q)); 
xlabel('q');
ylabel('h(q) = u(q)-u(q-1)');
axis([-1 2 -.1 1.1])
grid on;

%b2
t = -1:0.01:2; 
p = @(t) 1.0.*((t>=0)&(t<1));
r = @(t) t .* p(t);
figure(1);
plot(t,r(t));
xlabel('t');
ylabel('r(t)');
axis([-1 2 -.1 1.1])
grid on;

n = @(t) r(t) + r(-t+2);
figure(2);
plot(t,n(t));
xlabel('n');
ylabel('n(t)');
axis([-1 2 -.1 1.1])
grid on;

%b3
n1 = @(t) n(0.5 .* t);
figure(4);
plot(t,n1(t));
xlabel('n1');
ylabel('n1(t)');
grid on;

n2 = @(t) n(t);
figure(5);
plot(t,n2(t));
xlabel('n2');
ylabel('n2(t)');
grid on;

n3 = @(t) n(t + 0.5);
figure(6);
plot(t,n3(t));
xlabel('n3');
ylabel('n3(t)');
grid on;

%b3
n5 = @(t) n(t + 0.25);
figure(8);
plot(t,n5(t));
xlabel('n5');
ylabel('n5(t)');
grid on;

n6 = @(t) n5(0.5 * t);
figure(9);
plot(t,n6(t));
xlabel('n6');
ylabel('n6(t)');
grid on;