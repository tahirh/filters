function xlpf = lowPassFilter(x, alpha)
% implements low pass or exponentially weighted moving average filter
% in a recursive manner where x is the new data point entering the system
% and alpha is the weight assigned to the last data point
persistent first_run prev_x

if isempty(first_run)
    %initialize filter
    prev_x = x ;
    first_run = 1;
end

xlpf = alpha * prev_x + (1 - alpha) * x;
prev_x = xlpf;


end






