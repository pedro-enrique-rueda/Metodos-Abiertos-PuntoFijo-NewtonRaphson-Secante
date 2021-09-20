function tab = tabla(raiz,error,iteracion)

  % Las siguientes lineas me imprimen en pantalla una tabla con los resultados
  
  %%% instale lo siguiente en la linea de comando:
  %%% npk install https://github.com/apjanke/octave-tablicious/releases/download/v0.3.6/tablicious-0.3.6.tar.gz
  pkg load tablicious %esto si es octave
  iteraciones = iteracion';
  raiz = raiz';
  error = error';
  
  tab = table(iteraciones,raiz,error);
  prettyprint (tab) %esto en octave
  disp(tab)
  
end