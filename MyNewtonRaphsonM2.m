function [ ] = MyNewtonRaphson(F,xEST,TF)
% for such kind of functions write down either of the ff commands in the command window :
    % >> MyNewtonRaphson(@(x)exp(x)-3*x,1.5,1.6,10^-3)
    % >> MyNewtonRaphson(inline('exp(x)-3*x','x'),1.5,1.6,10^-3)
syms Fd(x) 
Fd(x) = diff(F(x),x); 
while 1
    
   xNS = xEST - (F(xEST)/Fd(xEST));     % First estimate.
   
  if F(xNS) == 0
    fprintf('An exact solution x = %11.6f was found',xNS);
    break;
  end
  
  if abs(F(xNS)) <= TF
     fprintf('An approximate solution x = %11.6f was found',xNS);
     break;
  else
    xEST = xNS;
  end 
  
end
end