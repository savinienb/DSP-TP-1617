function [out] = dirac(lateness,N)

if  nargin < 2 %%check the number of argument to be able to complet it
    N =  20;
end

if N > 20  %check the lenght and stop the program (with a warning) if the lengh is to big
    warning('Lenght must be inferior at 20');
    
    
else if lateness>N | lateness<0  %check if the shiffting is inside the lenght
        warning('shiftin can t be negatif nor superior to the lenght');
        
    else
        
        for a=2:N %The -1 is to keep the good despite of the shifting
            
            if lateness==0 && a==1; %deal with the zero special case
                out(1)=1;
                
                
            else if a==lateness %put the dirac at lateness
                    out(a)=1;
                    
                else %put zero elsewhere
                    out(a)=0;
                    
                end
                
            end
        end
    end
end
