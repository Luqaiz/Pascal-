program suma2arrays;
var
   listaUno: array [1..3] of integer;
   listaDos: array [1..3] of integer;
   listaFinal: array [1..3] of integer;
   i : integer;
begin

     writeln('Ingrese 3 numeros para la primer lista');
     for i:= 1 to 3 do
     begin
          readln(listaUno[i]);
     end;

     writeln('Ingrese 3 numeros para la segunda lista');

     for i:= 1 to 3 do
     begin
          readln(listaDos[i]);
     end;

     writeln('La suma de estos vectores da, en cada una de sus posiciones');

     for i:= 1 to 3 do
     begin
          writeln('En la posicion: ', i);
          listaFinal[i]:= listaUno[i] + listaDos[i];
          writeln('El resultado es: ', listaFinal[i]);
          readln();
     end;
end.
