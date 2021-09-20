function [raiz,error,iteracion] = secante(x0,x_m1,imax,es)
  
  ea = 1000;
  xrold = x0;
  iter = 0;
  
  
  while(ea > es && iter < imax )
    xr = xrold - funcion(xrold,2) * ( (x_m1 - xrold) / (funcion(x_m1,2) - funcion(xrold,2)));
   
    if(xr != 0)
       ea = abs((xr - xrold) / xr) * 100;      
    else
       break;
    end
    
    raiz(iter+1) = xr;
    error(iter+1) = ea;
    iteracion(iter+1) = iter+1;
    
    x_m1 = xrold;
    xrold = xr;
    iter = iter + 1;
    
  end
      
  return  
end