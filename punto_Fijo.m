function [raiz,error,iteracion] = punto_Fijo(x0,imax,es)
  xr = x0; 
  ea = 1000;
  iter = 1;
  
   while(ea > es && iter < (imax+1))
     
     xrold = xr;
     xr = funcion(xrold,1);
          
     if(xr != 0)
       ea = abs((xr - xrold) / xr) * 100;      
     else
       break;
     end
     
     raiz(iter) = xr;
     error(iter) = ea;
     iteracion(iter) = iter;
     
     iter = iter + 1;
     
   end
    
    return
end
