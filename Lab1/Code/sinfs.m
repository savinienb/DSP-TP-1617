function [out] = sinfs(freq,nper,sampling)

if nper <= 0  %check the lenght and stop the program (with a warning) if the lengh is to big
    warning('The number of period must be at least equal to 1');
    out=0;
    
else
    
    T= 0 : 1/sampling : nper/freq; %create a array containing all the value at wich we take the signal
    out=sin(2*pi*T*freq); %insert them into a sinus and save it
    
end
end


