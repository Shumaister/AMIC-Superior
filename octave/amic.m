function main
  interfazPrincipal()
endfunction

function [retval] = trunc (m, dec)
   d = power(10,str2double(dec));
   retval = round(m.* d)./ d;
endfunction

function [Solucion] = aproximacionLineal(listX, listY, decimales)
  cantFilas = size(listX);
  matrizAproximacion = zeros(cantFilas(1,2)+1, 4);
  for i = 1:cantFilas(1,2)
    matrizAproximacion(i,1) = listX(1,i);
    matrizAproximacion(i,2) = listY(1,i);
    matrizAproximacion(i,3) = listX(1,i).**2;
    matrizAproximacion(i,4) = listX(1,i)*listY(1,i);
  endfor
  matrizAproximacion(cantFilas(1,2)+1,1) = sum(matrizAproximacion(:,1));
  matrizAproximacion(cantFilas(1,2)+1,2) = sum(matrizAproximacion(:,2));
  matrizAproximacion(cantFilas(1,2)+1,3) = sum(matrizAproximacion(:,3));
  matrizAproximacion(cantFilas(1,2)+1,4) = sum(matrizAproximacion(:,4));
  Matrix1 = [matrizAproximacion(cantFilas(1,2)+1,3), matrizAproximacion(cantFilas(1,2)+1,1);matrizAproximacion(cantFilas(1,2)+1,1), cantFilas(1,2)];
  Matrix2 = [matrizAproximacion(cantFilas(1,2)+1,4); matrizAproximacion(cantFilas(1,2)+1,2)] ;
  Solucion = Matrix1\Matrix2;
  Solucion = trunc(Solucion,decimales);
endfunction

function [matrizAproximacion] = aproximacionLineal1(listX, listY, decimales)
  cantFilas = size(listX);
  matrizAproximacion = zeros(cantFilas(1,2)+1, 4);
  for i = 1:cantFilas(1,2)
    matrizAproximacion(i,1) = listX(1,i);
    matrizAproximacion(i,2) = listY(1,i);
    matrizAproximacion(i,3) = listX(1,i).**2;
    matrizAproximacion(i,4) = listX(1,i)*listY(1,i);
  endfor
  matrizAproximacion(cantFilas(1,2)+1,1) = sum(matrizAproximacion(:,1));
  matrizAproximacion(cantFilas(1,2)+1,2) = sum(matrizAproximacion(:,2));
  matrizAproximacion(cantFilas(1,2)+1,3) = sum(matrizAproximacion(:,3));
  matrizAproximacion(cantFilas(1,2)+1,4) = sum(matrizAproximacion(:,4));
endfunction

function [Solucion] = aproximacionParabola(listX, listY, decimales)
  cantFilas = size(listX);
  matrizAproximacion = zeros(cantFilas(1,2)+1, 7);
  for i = 1:cantFilas(1,2)
    matrizAproximacion(i,1) = listX(1,i);
    matrizAproximacion(i,2) = listY(1,i);
    matrizAproximacion(i,3) = listX(1,i).**2;
    matrizAproximacion(i,4) = listX(1,i).**3;
    matrizAproximacion(i,5) = listX(1,i).**4;
    matrizAproximacion(i,6) = listX(1,i)*listY(1,i);
    matrizAproximacion(i,7) = listY(1,i)*listX(1,i).**2;
  endfor
  matrizAproximacion(cantFilas(1,2)+1,1) = sum(matrizAproximacion(:,1));
  matrizAproximacion(cantFilas(1,2)+1,2) = sum(matrizAproximacion(:,2));
  matrizAproximacion(cantFilas(1,2)+1,3) = sum(matrizAproximacion(:,3));
  matrizAproximacion(cantFilas(1,2)+1,4) = sum(matrizAproximacion(:,4));
  matrizAproximacion(cantFilas(1,2)+1,5) = sum(matrizAproximacion(:,5));
  matrizAproximacion(cantFilas(1,2)+1,6) = sum(matrizAproximacion(:,6));
  matrizAproximacion(cantFilas(1,2)+1,7) = sum(matrizAproximacion(:,7));
  Matrix1 = [matrizAproximacion(cantFilas(1,2)+1,3), matrizAproximacion(cantFilas(1,2)+1,4), matrizAproximacion(cantFilas(1,2)+1,5);matrizAproximacion(cantFilas(1,2)+1,1), matrizAproximacion(cantFilas(1,2)+1,3), matrizAproximacion(cantFilas(1,2)+1,4);cantFilas(1,2), matrizAproximacion(cantFilas(1,2)+1,1), matrizAproximacion(cantFilas(1,2)+1,3)];
  Matrix2 = [matrizAproximacion(cantFilas(1,2)+1,7); matrizAproximacion(cantFilas(1,2)+1,6);matrizAproximacion(cantFilas(1,2)+1,2)];
  Solucion = Matrix1\Matrix2;
  Solucion = trunc(Solucion,decimales);
endfunction

function [matrizAproximacion] = aproximacionParabola1(listX, listY, decimales)
  cantFilas = size(listX);
  matrizAproximacion = zeros(cantFilas(1,2)+1, 7);
  for i = 1:cantFilas(1,2)
    matrizAproximacion(i,1) = listX(1,i);
    matrizAproximacion(i,2) = listY(1,i);
    matrizAproximacion(i,3) = listX(1,i).**2;
    matrizAproximacion(i,4) = listX(1,i).**3;
    matrizAproximacion(i,5) = listX(1,i).**4;
    matrizAproximacion(i,6) = listX(1,i)*listY(1,i);
    matrizAproximacion(i,7) = listY(1,i)*listX(1,i).**2;
  endfor
  matrizAproximacion(cantFilas(1,2)+1,1) = sum(matrizAproximacion(:,1));
  matrizAproximacion(cantFilas(1,2)+1,2) = sum(matrizAproximacion(:,2));
  matrizAproximacion(cantFilas(1,2)+1,3) = sum(matrizAproximacion(:,3));
  matrizAproximacion(cantFilas(1,2)+1,4) = sum(matrizAproximacion(:,4));
  matrizAproximacion(cantFilas(1,2)+1,5) = sum(matrizAproximacion(:,5));
  matrizAproximacion(cantFilas(1,2)+1,6) = sum(matrizAproximacion(:,6));
  matrizAproximacion(cantFilas(1,2)+1,7) = sum(matrizAproximacion(:,7));
endfunction

function [Solucion] = aproximacionExponencial(listX, listY, decimales)
  cantFilas = size(listX);
  matrizAproximacion = zeros(cantFilas(1,2)+1, 4);
  for i = 1:cantFilas(1,2)
    matrizAproximacion(i,1) = listX(1,i);
    matrizAproximacion(i,2) = reallog(listY(1,i));
    matrizAproximacion(i,3) = listX(1,i).**2;
    matrizAproximacion(i,4) = listX(1,i)*reallog(listY(1,i));
  endfor
  matrizAproximacion(cantFilas(1,2)+1,1) = sum(matrizAproximacion(:,1));
  matrizAproximacion(cantFilas(1,2)+1,2) = sum(matrizAproximacion(:,2));
  matrizAproximacion(cantFilas(1,2)+1,3) = sum(matrizAproximacion(:,3));
  matrizAproximacion(cantFilas(1,2)+1,4) = sum(matrizAproximacion(:,4));
  Matrix1 = [matrizAproximacion(cantFilas(1,2)+1,3), matrizAproximacion(cantFilas(1,2)+1,1);matrizAproximacion(cantFilas(1,2)+1,1), cantFilas(1,2)];
  Matrix2 = [matrizAproximacion(cantFilas(1,2)+1,4); matrizAproximacion(cantFilas(1,2)+1,2)] ;
  Solucion = Matrix1\Matrix2;
  Solucion(2,1) = e**Solucion(2,1);
  Solucion = trunc(Solucion,decimales);
endfunction

function [matrizAproximacion] = aproximacionExponencial1(listX, listY, decimales)
  cantFilas = size(listX);
  matrizAproximacion = zeros(cantFilas(1,2)+1, 4);
  for i = 1:cantFilas(1,2)
    matrizAproximacion(i,1) = listX(1,i);
    matrizAproximacion(i,2) = reallog(listY(1,i));
    matrizAproximacion(i,3) = listX(1,i).**2;
    matrizAproximacion(i,4) = listX(1,i)*reallog(listY(1,i));
  endfor
  matrizAproximacion(cantFilas(1,2)+1,1) = sum(matrizAproximacion(:,1));
  matrizAproximacion(cantFilas(1,2)+1,2) = sum(matrizAproximacion(:,2));
  matrizAproximacion(cantFilas(1,2)+1,3) = sum(matrizAproximacion(:,3));
  matrizAproximacion(cantFilas(1,2)+1,4) = sum(matrizAproximacion(:,4));
endfunction

function [Solucion] = aproximacionPotencial(listX, listY, decimales)
  cantFilas = size(listX);
  matrizAproximacion = zeros(cantFilas(1,2)+1, 6);
  for i = 1:cantFilas(1,2)
    matrizAproximacion(i, 1) = listX(1,i);
    matrizAproximacion(i, 2) = listY(1,i);
    matrizAproximacion(i, 3) = reallog(listX(1,i));
    matrizAproximacion(i, 4) = reallog(listX(1,i)).**2;
    matrizAproximacion(i, 5) = reallog(listY(1,i));
    matrizAproximacion(i, 6) = reallog(listX(1,i))*reallog(listY(1,i));
  endfor
  matrizAproximacion(cantFilas(1,2)+1,1) = sum(matrizAproximacion(:,1));
  matrizAproximacion(cantFilas(1,2)+1,2) = sum(matrizAproximacion(:,2));
  matrizAproximacion(cantFilas(1,2)+1,3) = sum(matrizAproximacion(:,3));
  matrizAproximacion(cantFilas(1,2)+1,4) = sum(matrizAproximacion(:,4));
  matrizAproximacion(cantFilas(1,2)+1,5) = sum(matrizAproximacion(:,5));
  matrizAproximacion(cantFilas(1,2)+1,6) = sum(matrizAproximacion(:,6)); 
  Matrix1 = [matrizAproximacion(cantFilas(1,2)+1,4), matrizAproximacion(cantFilas(1,2)+1,3) ; matrizAproximacion(cantFilas(1,2)+1,3), cantFilas(1,2)];
  Matrix2 = [matrizAproximacion(cantFilas(1,2)+1,6); matrizAproximacion(cantFilas(1,2)+1,5)];
  Solucion = Matrix1\Matrix2;
  sizeMatrix2 = size(Matrix2);
  Solucion(sizeMatrix2(1,1),1) = exp(Solucion(sizeMatrix2(1,1),1));
  Solucion = trunc(Solucion,decimales);
endfunction

function [matrizAproximacion] = aproximacionPotencial1(listX, listY, decimales)
  cantFilas = size(listX);
  matrizAproximacion = zeros(cantFilas(1,2)+1, 6);
  for i = 1:cantFilas(1,2)
    matrizAproximacion(i, 1) = listX(1,i);
    matrizAproximacion(i, 2) = listY(1,i);
    matrizAproximacion(i, 3) = reallog(listX(1,i));
    matrizAproximacion(i, 4) = reallog(listX(1,i)).**2;
    matrizAproximacion(i, 5) = reallog(listY(1,i));
    matrizAproximacion(i, 6) = reallog(listX(1,i))*reallog(listY(1,i));
  endfor
  matrizAproximacion(cantFilas(1,2)+1,1) = sum(matrizAproximacion(:,1));
  matrizAproximacion(cantFilas(1,2)+1,2) = sum(matrizAproximacion(:,2));
  matrizAproximacion(cantFilas(1,2)+1,3) = sum(matrizAproximacion(:,3));
  matrizAproximacion(cantFilas(1,2)+1,4) = sum(matrizAproximacion(:,4));
  matrizAproximacion(cantFilas(1,2)+1,5) = sum(matrizAproximacion(:,5));
  matrizAproximacion(cantFilas(1,2)+1,6) = sum(matrizAproximacion(:,6));
endfunction

function [Solucion] = aproximacionHiperbolica(listX, listY, decimales)
  cantFilas = size(listX);
  matrizAproximacion = zeros(cantFilas(1,2)+1, 4);
  for i = 1:cantFilas(1,2)
    matrizAproximacion(i, 1) = listX(1,i);
    matrizAproximacion(i, 2) = listY(1,i);
    matrizAproximacion(i, 3) = listX(1,i).**2;
    matrizAproximacion(i, 4) = listX(1,i)*listY(1,i);
  endfor
  matrizAproximacion(cantFilas(1,2)+1,1) = sum(matrizAproximacion(:,1));
  matrizAproximacion(cantFilas(1,2)+1,2) = sum(matrizAproximacion(:,2));
  matrizAproximacion(cantFilas(1,2)+1,3) = sum(matrizAproximacion(:,3));
  matrizAproximacion(cantFilas(1,2)+1,4) = sum(matrizAproximacion(:,4));
  Matrix1 = [cantFilas(1,2),matrizAproximacion(cantFilas(1,2)+1,1);matrizAproximacion(cantFilas(1,2)+1,1),matrizAproximacion(cantFilas(1,2)+1,3)];
  Matrix2 = [matrizAproximacion(cantFilas(1,2)+1,2);matrizAproximacion(cantFilas(1,2)+1,4)];
  Solucion = Matrix1\Matrix2;
  Solucion(1,1) = Solucion(1,1)*(Solucion(2,1).**(-1));
  Solucion(2,1) = Solucion(2,1).**(-1);
  Solucion = trunc(Solucion,decimales);
endfunction

function [matrizAproximacion] = aproximacionHiperbolica1(listX, listY, decimales)
  cantFilas = size(listX);
  matrizAproximacion = zeros(cantFilas(1,2)+1, 4);
  for i = 1:cantFilas(1,2)
    matrizAproximacion(i,1) = listX(1,i);
    matrizAproximacion(i,2) = listY(1,i);
    matrizAproximacion(i, 3) = listX(1,i).**2;
    matrizAproximacion(i, 4) = listX(1,i)*listY(1,i);
  endfor
  matrizAproximacion(cantFilas(1,2)+1,1) = sum(matrizAproximacion(:,1));
  matrizAproximacion(cantFilas(1,2)+1,2) = sum(matrizAproximacion(:,2));
  matrizAproximacion(cantFilas(1,2)+1,3) = sum(matrizAproximacion(:,3));
  matrizAproximacion(cantFilas(1,2)+1,4) = sum(matrizAproximacion(:,4));
endfunction

function [TablaComparacion] = compararAproximaciones(listX, listY, decimales)
  cantFilas = size(listX);
  TablaComparacion = zeros(cantFilas(1,2), 13);
  [SolucionLineal]= aproximacionLineal(listX,listY,decimales);
  [SolucionParabola]= aproximacionParabola(listX,listY,decimales);
  [SolucionExponencial]= aproximacionExponencial(listX,listY,decimales);
  [SolucionPotencial]= aproximacionPotencial(listX,listY,decimales);
  [SolucionHiperbola]= aproximacionHiperbolica(listX,listY,decimales);
  for i = 1:cantFilas(1,2)
    TablaComparacion(i,1) = i;%i
    TablaComparacion(i,2) = listX(1,i);%Xi
    TablaComparacion(i,3) = listY(1,i);%Yi
    TablaComparacion(i,4) = SolucionLineal(1,1)*listX(1,i)+SolucionLineal(2,1);%Recta
    TablaComparacion(i,5) = SolucionParabola(1,1)*(listX(1,i).**2)+SolucionParabola(2,1)*listX(1,i)+SolucionParabola(3,1);%Parabola
    TablaComparacion(i,6) = SolucionExponencial(2,1)*exp(SolucionExponencial(1,1)*listX(1,i));%Exponencial
    TablaComparacion(i,7) = SolucionPotencial(2,1)*(listX(1,i).**SolucionPotencial(1,1));%Potencial
    TablaComparacion(i,8) = SolucionHiperbola(1,1)/(SolucionHiperbola(2,1)+listX(1,i));%Hiperbola
    TablaComparacion(i,9) = (listY(1,i)-TablaComparacion(i,4)).**2;%Error Recta
    TablaComparacion(i,10) = (listY(1,i)-TablaComparacion(i,5)).**2;%Error Parabola
    TablaComparacion(i,11) = (listY(1,i)-TablaComparacion(i,6)).**2;%Error Exponencial
    TablaComparacion(i,12) = (listY(1,i)-TablaComparacion(i,7)).**2;%Error Potencial
    TablaComparacion(i,13) = (listY(1,i)-TablaComparacion(i,8)).**2;%Error Hiperbola
  endfor  
  TablaComparacion = trunc(TablaComparacion,decimales);
endfunction

function [Y] = funcionLineal(SolucionLineal,X)
  Y = (@(X)(SolucionLineal(1,1)*X+SolucionLineal(2,1)));
endfunction

function [Y] = funcionParabola(SolucionParabola,X)
  Y = (@(X)(SolucionParabola(1,1)*(X.**2)+SolucionParabola(2,1)*X+SolucionParabola(3,1)));
endfunction

function [Y] = funcionExponencial(SolucionExponencial,X)
  Y = (@(X)(SolucionExponencial(2,1)*exp(SolucionExponencial(1,1)*X)));
endfunction

function [Y] = funcionPotencial(SolucionPotencial,X)
  Y = (@(X)(SolucionPotencial(2,1)*(X.**SolucionPotencial(1,1))));
endfunction

function [Y] = funcionHiperbolica(SolucionHiperbola,X)
  Y = (@(X)(SolucionHiperbola(1,1)/(SolucionHiperbola(2,1)+X)));
endfunction

function graficar(listX, listY, decimales, funcion)
  cantFilas = size(listX);
  hold on;
  scatter(listX,listY,'or');
  fplot(funcion,[min(listX),max(listX)]);
  hold off;
endfunction

function interfazPrincipal()
   pkg load control
   pkg load symbolic
   seleccionMenuOpciones = inputdlg({"Elija la accion que desee realizar:\n\n1- Ingresar datos\n\n2- Salir del programa\n\n"},"Ajuste App", [0.5]);
   ok=0;
   while(ok == 0)
      switch(str2num(seleccionMenuOpciones{1}))
        case(1)
          interfazAjuste()
        case(2)
          ok = 1;
          exit;
      endswitch
   endwhile
endfunction

function interfazAjuste()
  datosAproximacion = inputdlg({"Ingrese la lista de valores X","Ingrese la lista de valores Y", "Ingrese la cantidad de decimales de precision para el resultado"},"Ajuste App",[0.5]);

    listX = str2double(strsplit(datosAproximacion{1},","));
    listY = str2double(strsplit(datosAproximacion{2},","));
    decimales = datosAproximacion{3};
    matrizPuntos = [listX;listY];
    
    seguirOperando=0;
    while(seguirOperando == 0)
      seleccionMenuAcciones = inputdlg({"Seleccione una opcion ingresando el numero correspondiente:\n\n-1- Aproximar funcion\n\n-2- Comparar aproximaciones\n\n-3- Finalizar\n\n"},"Ajuste App", [0.5]);
      ok=0;
      switch(str2num(seleccionMenuAcciones{1}))
        case(1)
              
                seleccionMenuOpcionesMostrar = inputdlg({"Elija una opcion de ajuste:\n\n-1- Recta de minimos cuadrados\n\n-2- Parabola de minimos cuadrados\n\n-3- Aproximacion Exponencial\n\n-4- Aproximacion Potencial\n\n-5- Aproximacion Hiperbola\n\n"},"Ajuste App", [0.5]);
                ok=0;
                   switch(str2num(seleccionMenuOpcionesMostrar{1}))
                        case(1)
                        
                          [Solucion]= aproximacionLineal(listX,listY,decimales);
                          seleccionMenuAproximacion = inputdlg({"-1- Funcion\n\n-2- Detalle del calculo\n\n-3- Grafico\n\n"},"Ajuste App", [0.5]);
                          switch(str2num(seleccionMenuAproximacion{1}))
                            case(1)
                              msgbox(cstrcat("La funcion es:\n","y = ",num2str(Solucion(1,1))," x+ ", num2str(Solucion(2,1))),"Ajuste App");
                            case(2)
                              mostrarDetalleDeCalculo(1,listX,listY,decimales);
                            case(3)
                              graficar(listX,listY,decimales,funcionLineal(Solucion));
                          endswitch
                          
                       case(2)
                       
                          [Solucion]= aproximacionParabola(listX,listY,decimales);
                          seleccionMenuAproximacion = inputdlg({"-1- Funcion\n\n-2- Detalle del calculo\n\n-3- Grafico\n\n"},"Ajuste App", [0.5]);
                          switch(str2num(seleccionMenuAproximacion{1}))
                            case(1)
                              msgbox(cstrcat("La funcion es:\n","y = ",num2str(Solucion(1,1))," x^2+ ",num2str(Solucion(2,1))," x + ",num2str(Solucion(3,1))),"Ajuste App");
                            case(2)
                              mostrarDetalleDeCalculo(2,listX,listY,decimales);
                            case(3)
                              graficar(listX,listY,decimales,funcionParabola(Solucion));
                          endswitch
                          
                       case(3)
                       
                          [Solucion] = aproximacionExponencial(listX,listY,decimales);
                          seleccionMenuAproximacion = inputdlg({"-1- Funcion\n\n-2- Detalle del calculo\n\n-3- Grafico\n\n"},"Ajuste App", [0.5]);
                          switch(str2num(seleccionMenuAproximacion{1}))
                            case(1)
                              msgbox(cstrcat("La funcion es:\n","y = ",num2str(Solucion(2,1))," * e^(",num2str(Solucion(1,1))," * x)"),"Ajuste App");
                            case(2)
                              mostrarDetalleDeCalculo(4,listX,listY,decimales);
                            case(3)
                              graficar(listX,listY,decimales,funcionExponencial(Solucion));
                          endswitch
                          
                       case(4)
                       
                         [Solucion] = aproximacionPotencial(listX,listY,decimales);
                         seleccionMenuAproximacion = inputdlg({"-1- Funcion\n\n-2- Detalle del calculo\n\n-3- Grafico\n\n"},"Ajuste App", [0.5]);
                         switch(str2num(seleccionMenuAproximacion{1}))
                            case(1)
                              msgbox(cstrcat("La funcion es:\n","y = ",num2str(Solucion(2,1))," x ^ ",num2str(Solucion(1,1))),"Ajuste App");
                            case(2)
                              mostrarDetalleDeCalculo(3,listX,listY,decimales);
                            case(3)
                              graficar(listX,listY,decimales,funcionPotencial(Solucion));
                         endswitch
                         
                       case(5)
                       
                         [Solucion] = aproximacionHiperbolica(listX,listY,decimales);
                         seleccionMenuAproximacion = inputdlg({"-1- Funcion\n\n-2- Detalle del calculo\n\n-3- Grafico\n\n"},"Ajuste App", [0.5]);
                          switch(str2num(seleccionMenuAproximacion{1}))
                            case(1)
                              msgbox(cstrcat("La funcion es:\n","y = ",num2str(Solucion(1,1))," / (",num2str(Solucion(2,1))," + x)"),"Ajuste App");
                            case(2)
                              mostrarDetalleDeCalculo(5,listX,listY,decimales);
                            case(3)
                              graficar(listX,listY,decimales,funcionHiperbolica(Solucion));
                          endswitch
                          
                     endswitch
              
        case(2)
          [TablaComparacion] = compararAproximaciones(listX,listY,decimales);
          disp("i Xi Yi Recta Parabola Exponencial Potencial Hiperbola ErrRecta ErrParab ErrExp ErrPot ErrHip");
          disp(TablaComparacion);%LA MATRIZ DE COMPARACIÓN SE MUESTRA POR CONSOLA (!!!)
          %columns = {'i','Xi','Yi','Recta','Parabola','Exponencial','Potencial','Hiperbola','ErrRecta','ErrParab','ErrExp','ErrPot','ErrHip'}; 
          %uitable('Data',TablaComparacion,'ColumnName',columns);

          %Obtengo mejor aproximacion
          SumatoriaErrores = zeros(1, 5);
          for i = 1:5
              SumatoriaErrores(1,i) = sum(TablaComparacion(:,i+8));
          endfor
          menorError = min(SumatoriaErrores);
          if(SumatoriaErrores(1,1)==menorError) msgbox("La mejor aproximacion es la Recta (calculando el error a traves del metodo de minimos cuadrados)\n\nSi desea ver la tabla de comparacion de aproximaciones, acceda a la consola.");
          elseif(SumatoriaErrores(1,2)==menorError) msgbox("La mejor aproximacion es la Parabola (calculando el error a traves del metodo de minimos cuadrados)\n\nSi desea ver la tabla de comparacion de aproximaciones, acceda a la consola.");
          elseif(SumatoriaErrores(1,3)==menorError) msgbox("La mejor aproximacion es la Exponencial (calculando el error a traves del metodo de minimos cuadrados)\n\nSi desea ver la tabla de comparacion de aproximaciones, acceda a la consola.");
          elseif(SumatoriaErrores(1,4)==menorError) msgbox("La mejor aproximacion es la Potencial (calculando el error a traves del metodo de minimos cuadrados)\n\nSi desea ver la tabla de comparacion de aproximaciones, acceda a la consola.");
          elseif(SumatoriaErrores(1,5)==menorError) msgbox("La mejor aproximacion es la Hiperbola (calculando el error a traves del metodo de minimos cuadrados)\n\nSi desea ver la tabla de comparacion de aproximaciones, acceda a la consola.");
          endif
        case(3)
          seguirOperando = 1;
      endswitch
    endwhile
  interfazPrincipal();
endfunction

%Tablas de sumatorias
function mostrarDetalleDeCalculo(tipoFuncion, listX, listY, cantidadDecimales)
  cantFilas = size(listX);
  disp(cantFilas);
  switch(tipoFuncion)
    case(1)
      [matrizAproximacion] = aproximacionLineal1(listX, listY, cantidadDecimales);
      Matrix1 = [matrizAproximacion(cantFilas(1,2)+1,3), matrizAproximacion(cantFilas(1,2)+1,1);matrizAproximacion(cantFilas(1,2)+1,1), cantFilas(1,2)];
      Matrix2 = [matrizAproximacion(cantFilas(1,2)+1,4); matrizAproximacion(cantFilas(1,2)+1,2)] ;
      msgbox(disp(matrizAproximacion), "Detalle de calculos:\n\n", "none"); 
      msgbox(cstrcat(mat2str(Matrix1(1,1)), "*a", "+ b*", mat2str(Matrix1(1,2)), " = ", mat2str(Matrix2(1,1)), "\n\n", mat2str(Matrix1(2,1)), "* a + ", mat2str(Matrix1(2,2)), " * b = ", mat2str(Matrix2(2,1))), "Sistema utilizado", "none");
    case(2)
      [matrizAproximacion] = aproximacionParabola1(listX, listY, cantidadDecimales);
      Matrix1 = [matrizAproximacion(cantFilas(1,2)+1,3), matrizAproximacion(cantFilas(1,2)+1,4), matrizAproximacion(cantFilas(1,2)+1,5);matrizAproximacion(cantFilas(1,2)+1,1), matrizAproximacion(cantFilas(1,2)+1,3), matrizAproximacion(cantFilas(1,2)+1,4);cantFilas(1,2), matrizAproximacion(cantFilas(1,2)+1,1), matrizAproximacion(cantFilas(1,2)+1,3)];
      Matrix2 = [matrizAproximacion(cantFilas(1,2)+1,7); matrizAproximacion(cantFilas(1,2)+1,6);matrizAproximacion(cantFilas(1,2)+1,2)];
      msgbox(disp(matrizAproximacion), "Detalle de calculos:\n\n", "none"); 
      msgbox(cstrcat(mat2str(Matrix1(1,1)), " * a + ", mat2str(Matrix1(1,2)), " * B = ", mat2str(Matrix2(1,1)), "\n\n", mat2str(Matrix1(2,1)), " * a + ", mat2str(Matrix1(2,2)), " * B = ", mat2str(Matrix2(2,1))), "Sistema utilizado" , "none"); 
    case(3)
      [matrizAproximacion] = aproximacionPotencial1(listX, listY, cantidadDecimales);
      Matrix1 = [matrizAproximacion(cantFilas(1,2)+1,4), matrizAproximacion(cantFilas(1,2)+1,3) ; matrizAproximacion(cantFilas(1,2)+1,3), cantFilas(1,2)]
      Matrix2 = [matrizAproximacion(cantFilas(1,2)+1,6); matrizAproximacion(cantFilas(1,2)+1,5)];
      msgbox(disp(matrizAproximacion), "Detalle de calculos:\n\n", "none"); 
      msgbox(cstrcat(mat2str(Matrix1(1,1)), " * a + ", mat2str(Matrix1(1,2)), " * B = ", mat2str(Matrix2(1,1)), "\n\n", mat2str(Matrix1(2,1)), " * a + ", mat2str(Matrix1(2,2)), " * B = ", mat2str(Matrix2(2,1))), "Sistema utilizado" , "none"); 
    case(4)
      [matrizAproximacion] = aproximacionExponencial1(listX, listY, cantidadDecimales);
      Matrix1 = [matrizAproximacion(cantFilas(1,2)+1,3), matrizAproximacion(cantFilas(1,2)+1,1);matrizAproximacion(cantFilas(1,2)+1,1), cantFilas(1,2)];
      Matrix2 = [matrizAproximacion(cantFilas(1,2)+1,5); matrizAproximacion(cantFilas(1,2)+1,4)] ;
      msgbox(disp(matrizAproximacion), "Detalle de calculos:\n\n", "none"); 
      msgbox(cstrcat(mat2str(Matrix1(1,1)), " * a + ", mat2str(Matrix1(1,2)), " * B = ", mat2str(Matrix2(1,1)), "\n\n", mat2str(Matrix1(2,1)), " * a + ", mat2str(Matrix1(2,2)), " * B = ", mat2str(Matrix2(2,1))), "Sistema utilizado" , "none");
    case(5)
      [matrizAproximacion] = aproximacionHiperbolica1(listX, listY, cantidadDecimales);
      Matrix1 = [cantFilas(1,2),matrizAproximacion(cantFilas(1,2)+1,1);matrizAproximacion(cantFilas(1,2)+1,1),matrizAproximacion(cantFilas(1,2)+1,3)];
      Matrix2 = [matrizAproximacion(cantFilas(1,2)+1,2);matrizAproximacion(cantFilas(1,2)+1,4)];
      msgbox(disp(matrizAproximacion), "Detalle de calculos:\n\n", "none"); 
      msgbox(cstrcat(mat2str(Matrix1(1,1)), " * a + ", mat2str(Matrix1(1,2)), " * B = ", mat2str(Matrix2(1,1)), "\n\n", mat2str(Matrix1(2,1)), " * a + ", mat2str(Matrix1(2,2)), " * B = ", mat2str(Matrix2(2,1))), "Sistema utilizado" , "none"); 
  endswitch
endfunction