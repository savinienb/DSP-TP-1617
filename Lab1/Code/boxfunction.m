function [out] = boxfunction(width,lateness,N)

if  nargin < 1
    
    width =  1;
    lateness=10;
     N =  20;
     
else if  nargin < 2
        
        lateness=10;
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


            
            if lateness==0 && width>0 && a==1; %deal with the special 0 case
                out(1)=1;
             
            else if a>=lateness-width/2 && width>0 && a<lateness+width/2 %if the value is into the box set it to one
                    out(a+1)=1;
                    
                else %otherwise put it to zero
                    out(a+1)=0;
                    
                end

            end
        end

    end
end