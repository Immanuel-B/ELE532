%time
t = 0:0.01:4;

% Define alpha values
alpha = [1, 3, 5, 7];

% Initialize figure for plotting
figure;
hold on;

S = zeros(length(t), length(alpha));

% Loop through alpha values
for i = 1:length(alpha)
    % Compute s_alpha(t)
    s_alpha = exp(-2) * exp(-alpha(i) * t) .* cos(4 * pi * t);
    
    % Store the function in the matrix
    S(:, i) = s_alpha;
    
    % Plot the function
    plot(t, s_alpha, 'DisplayName', ['\alpha = ', num2str(alpha(i))]);
end

% Add labels, title, and legend to the plot
title('Plot of s_\alpha(t) for different \alpha');
xlabel('t');
ylabel('s_\alpha(t)');
legend show;
grid on;

% Determine the size of the matrix S
matrix_size = size(S);

% Display the size of the matrix
disp('Size of the matrix S:');
disp(matrix_size);