function [raiz,error,iteracion] = newton_raphson(x0,imax,es)
  
  xrold = x0;
  ea = 1000;
  iter = 0;
  
  while(ea > es && iter < imax)
    
    xr = xrold - funcion(xrold,2) / derivada(xrold);

    if(xr != 0)
       ea = abs((xr - xrold) / xr) * 100;      
    else
       break;
    end
    
    raiz(iter+1) = xr;
    error(iter+1) = ea;
    iteracion(iter+1) = iter+1;
    
    xrold = xr;
    iter = iter + 1;
    
  end
      
  return
end