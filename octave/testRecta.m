  pkg load geometry;
  
function graficar(listX, listY, decimales, funcion)
  cantFilas = size(listX);
  hold on;
  scatter(listX,listY,'or');
  fplot(funcion,[min(listX),max(listX)]);
  hold off;
endfunction

  
  %No funcionan los dos ejemplos a la vez (comentar uno u otro)
  %---------------------------------------------------------
  %Rectas en distintas direciones
  hold on
  axis([0 100 0 100]);
  drawLine([30 40 10 20]);
  drawLine([30 40 20 -10], 'color', 'm', 'linewidth', 2);
  %-------
 %Para los puntos
   t = linspace(0, 2*pi, 20)';
   drawPoint([5*cos(t)+10 3*sin(t)+10], 'r+');
   drawPoint(10, 10);
   
   hold off
  
  %---------------------------------------------------------
  %rectas constantes
 % clf;
 % line ([0 1], [0.8 0.8], "linestyle", "-", "color", "b");
 %line ([0 1], [0.6 0.6], "linestyle", "--", "color", "g");  %este podria servir para hacer una nuvbe de puntitos
 %line ([0 1], [0.4 0.4], "linestyle", ":", "color", "r");
 %line ([0 1], [0.2 0.2], "linestyle", "-.", "color", "k");
 %ylim ([0 1]);
 %title ("line() with various linestyles");
 %legend ('"-"', '"--"', '":"', '"-."', 'location', 'eastoutside');

   