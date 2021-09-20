function f = funcion(x,n)
  
  if(n==1)
    g = exp(-x);
    f=g;
  elseif(n==2)
    f = exp(-x) - x;
  end
    
  return
end