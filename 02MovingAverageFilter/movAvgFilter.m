function avg = movAvgFilter(x)
% implements moving average filter
% x is the new data point entering the system

persistent first_run window_size t
persistent prev_avg x_buffer

if isempty(first_run)
    %initialize filter
    t = 1;
    window_size = 10; 
    x_buffer = zeros(window_size+1, 1);
    prev_avg = 0;
    first_run = 1;
  
end

for i = 1:window_size
    x_buffer(i) = x_buffer(i + 1);
end 
x_buffer(window_size+1) = x;


if t <= window_size
    %if number of observations is less than the window size
    %compute the simple average
    avg = sum(x_buffer)/t;
elseif t > window_size
    % if number of obserations exceeds window size
    % compute using moving average filter
    avg = prev_avg + (x - x_buffer(1))/window_size;    
end 

t = t + 1;
prev_avg = avg;
end






