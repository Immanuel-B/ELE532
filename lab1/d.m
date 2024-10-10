%D1
A(:);
A([ 2 4 7 ]);
[ A >= 0.2 ]
A([ A >= 0.2 ]);
A([ A >= 0.2 ]) = 0;

%D2
%a
%tic toc measures the times
tic;
%iterate through rows and cols
for i = 1:size(B, 1) %size of rows/columns
    for j = 1:size(B, 2)
        if abs(B(i, j)) < 0.01
            B(i, j) = 0;
        end
    end
end
toc;

%b
tic;
%built in feautre to set values of those below 0.01 to zero
B(abs(B) < 0.01) = 0;
toc;


%D3
%create of copy of the audio
x_audio_A = x_audio;
threshold = 0.01;
%filter out noise
x_audio_A(abs(x_audio_A) < threshold) = 0;
%count the zeros
num_zeros = sum(x_audio_A == 0);
%play the audio with 8000Hz
sound(x_audio_A, 8000);

