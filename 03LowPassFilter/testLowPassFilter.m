clear all

nSamples = 500; 
avg = zeros(nSamples, 1);
readings = zeros(nSamples, 1);

for i = 1:nSamples
    x = getSonarReading();
    readings(i) = x;
    
    avg(i) = lowPassFilter(x, 0.7);
end 

figure
dt = 0.02; 
t = 0:dt:nSamples*dt-dt;
plot(t, readings, 'r.')
hold on
plot(t, avg, 'b')

legend('Sonar Readings', 'Low Pass Filter')

