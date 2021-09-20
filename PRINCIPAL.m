clc, clear

selection = 0;

while( selection != 5 )

  disp('Hola. Este es el men� asistente que lo guiar� a travez de 3 opciones: ')
  disp('seleccione alguno de los siguientes m�todos: ')
  disp('              1 - M�todo de Punto Fijo.')
  disp('              2 - M�todo de Newton-Raphson.')
  disp('              3 - M�todo de Secante.')
  disp('              4 - Limpiar la pantalla.')
  disp('              5 - Salir')

  selection = input(' �Qu� Opci�n toma? :  ');


  if( selection > 5 || selection <= 0 )
    disp('--------------------------------------------------------------------------------------------------------------------')
    disp('-------------------------------SELECCIONE UNA OPCI�N ENTRE LAS 5 DISPONIBLES.---------------------------------------')
    disp('--------------------------------------------------------------------------------------------------------------------')
    continue
  elseif ( selection == 1 )

    disp(' Genial, ahora est�s utilizando el m�todo de Punto Fijo ')
    disp(' Para este, debes seleccionar 3 datos fundamentales para el')
    disp(' correcto funcionamiento del software, de lo contrario te fallar�.')
    
    x0 = input(' Ingresa x0, este representa la condicion inicial: ');
    es = input(' Ingresa ahora el error minimo que deseas: ');
    imax = input(' Ingresa por �ltimo la cantidad de iteraciones maximas que deseas: ');
      
    [raiz,error,iteracion] = punto_Fijo(x0,imax,es);
    tabla(raiz,error,iteracion)
    
    selection = 1;

    
  elseif ( selection == 2 )
    % metodo de newton raphson

    disp(' Genial, ahora est�s utilizando el m�todo de Newton-Raphson ')
    disp(' Para este, debes seleccionar 3 datos fundamentales para el')
    disp(' correcto funcionamiento del software, de lo contrario te fallar�.')
    
    x0 = input(' Ingresa x0, este representa la condicion inicial: ');
    es = input(' Ingresa ahora el error minimo que deseas: ');
    imax = input(' Ingresa por �ltimo la cantidad de iteraciones maximas que deseas: ');

    
    [raiz,error,iteracion] = newton_raphson(x0,imax,es);
    tabla(raiz,error,iteracion)
    
    selection = 2;
    
  elseif ( selection == 3 )
    % metodo de la secante

    disp(' Genial, ahora est�s utilizando el m�todo de Secante ')
    disp(' Para este, debes seleccionar 3 datos fundamentales para el')
    disp(' correcto funcionamiento del software, de lo contrario te fallar�.')
    
    x0 = input(' Ingresa x0, este representa la condicion inicial: ');
    x_m1 = input(' Ingresa xi-1: ');
    es = input(' Ingresa ahora el error minimo que deseas: ');
    imax = input(' Ingresa por �ltimo la cantidad de iteraciones maximas que deseas: ');

    
    [raiz,error,iteracion] = secante(x0,x_m1,imax,es);
    tabla(raiz,error,iteracion)
    
    selection = 3;

    
  elseif(selection == 4)
    clc
    disp('--------------------------------------------------------------------------------------------------------------------')
    disp('------------------------------------EXCELENTE! YA LIMPIASTE LA PANTALLA.--------------------------------------------')
    disp('--------------------------------------------------------------------------------------------------------------------')
    selection = 4;
  elseif(selection == 5)
    disp('--------------------------------------------------------------------------------------------------------------------')
    disp('------------------------------------------LAMENTAMOS VERTE PARTIR.--------------------------------------------------')
    disp('--------------------------------------------------------------------------------------------------------------------')
  end

end