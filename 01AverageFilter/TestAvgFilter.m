clear all

rng(1);
dt = 0.2;
t = 0:dt:10;

nSamples = length(t);
averages = zeros(nSamples, 1);
measurments = zeros(nSamples, 1);

for k=1:nSamples
    x = getVoltMeasure();
    avg = AvgFilter(x);
    
    averages(k) = avg;
    measurments(k) = x; 
end

figure
plot(t, measurments, 'r:*')
hold on
plot(t, averages, 'o-')

    
    
