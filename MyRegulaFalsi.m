function [ ] = MyRegulaFalsi(Fun,a,b,TF)
F = str2func(strcat('@(x)',Fun));

if F(a)*F(b) < 0
    while 1
     
      xNS = (a*F(b) - b*F(a))/(F(b) - F(a));            % First estimate.
      
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