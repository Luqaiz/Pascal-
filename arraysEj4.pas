program arraysEj4;

var
   numeros: array[1..10] of integer;
   i: integer;

begin
     for i:= 1 to 10 do
     begin
          if (i mod 2=0) then
             numeros[i] := i;
             writeln ('Numero par guardado: ', numeros[i]);
          end;
     end;
     readln();
end.
