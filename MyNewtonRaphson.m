function [ ] = MyNewtonRaphson(Fun,xEST,TF)

F  = str2func(strcat('@(x)',Fun));
syms Fd(x) 
Fd(x) = diff(F,x); 
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