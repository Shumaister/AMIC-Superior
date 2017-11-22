%creamos una figura
f = figure;

%Creamos un panel que contiene los uicontrol
p = uipanel ("position", [.0 .0 1 1]);

%matriz de ejemplo
a=rand(3,2);

%las posiciones: [alineacionEnX, alineacionEnY, ancho, alto]
%las uicontrol se usan de a pares ordenados: clave, valor
%parent indica sobre que panel se va a reflejar el uicontrol
%style es el estilo de uicontrol (https://www.gnu.org/software/octave/doc/interpreter/UI-Elements.html#XREFuicontrol)
%luego usamos las propiedades para configurar
%https://www.gnu.org/software/octave/doc/v4.0.1/Text-Properties.html
%por ejemplo, style + text significa un uicontrol que muestra textos
%luego, le damos valores al "text", estos son: string, que es el string que va a contener el tipo 
%fontname, para el nombre de la fuente
%y asi vas jugando con los pares, aca estan todos: https://www.gnu.org/software/octave/doc/v4.0.1/Text-Properties.html
%asi como para text, hay para otros
b2 = uicontrol ("parent", p, "style", "text", "string", disp(a), "fontsize", 12.5,"fontname", "Consolas","position",[.1 175 200 300]);
b3 = uicontrol ("parent", p, "style", "text", "string", "Aca irian los titulos de la 'tabla'", "position", [5 375 230 15])