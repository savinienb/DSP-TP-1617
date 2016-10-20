function [out] = rampfunction(slope,lateness,N)

%check and add missing condition
if  nargin < 1
    slope =  1;
    
    lateness=0;
    N =  20;
    
else if  nargin < 2
        lateness=0;
        N =  20;
        
    else if  nargin < 3
            N =  20;
        end
    end
end

if N > 20  %check the lenght and stop the program (with a warning) if the lengh is to big
    warning('Lenght must be inferior at 20');
    
    
else if lateness>N | lateness<0  %check if the shiffting is inside the lenght
        warning('shiftin can t be negatif nor superior to the lenght');
        
    else
        
        for a=2:N %The -1 is to keep the good despite of the shifting
            
            if lateness==0 && a==1; %deal with the special 0 case
                
                out(1)=0;
                
            else if a>=lateness
                    out(a)=slope*(a-1-lateness);
                    
                else
                    out(a)=0;
                end
                
            end
        end
    end
end
