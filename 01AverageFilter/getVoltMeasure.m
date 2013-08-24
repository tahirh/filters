function z = getVoltMeasure( )
%GetVoltMeasure Gets measure of voltage
% Voltage is 14.4 with white noise added to it. 
w = 0 + randn(1,1);
z = 14.4 + w;
end

