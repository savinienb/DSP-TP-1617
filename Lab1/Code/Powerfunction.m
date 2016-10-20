function [out] = Powerfunction(power,lateness,N)

if  nargin < 1
    power =  1;
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
        
        
    else if lateness>N
            
        else
            
            for a=2:N %The -1 is to keep the good despite of the shifting
                
                if lateness==0 && a==1; %deal with the special 0 case
                    out(a)=1;
                    
                else if a>=lateness
                        out(a)=(a-1-lateness)^power; %compute the power while taking the shifting into account
                        
                    else
                        out(a)=0; %put zero according to the dephasage
                    end
                    
                end
            end
        end
        
    end
end
