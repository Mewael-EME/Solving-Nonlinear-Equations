function [ ] = MyBisection(F,a,b,TF)
% for such kind of functions write down either of the ff commands in the command window :
    % >> MyBisection(@(x)exp(x)-3*x,1.5,1.6,10^-3)
    % >> MyBisection(inline('exp(x)-3*x','x'),1.5,1.6,10^-3)
if F(a)*F(b) < 0
    while 1
     
      xNS = (a+b)/2;            % First estimate.
      
      if F(xNS) == 0
        fprintf('An exact solution x = %11.6f was found',xNS);
        break;
      end
      
      if abs(F(xNS)) <= TF
         fprintf('An approximate solution x = %11.6f was found',xNS);
         break;
      else
          if F(a)*F(xNS) < 0
             b = xNS;
          else 
             a = xNS; 
          end
      end 
      
    end
else    
disp('Error: The function has the same sign at the end points. Try another interval ');
end

end