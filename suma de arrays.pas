program arrays;
var
   numeros : array[0..2] of integer;
   suma: integer;

begin
     numeros[0]:=3;
     numeros[1]:=5;
     numeros[2]:=8;

     suma := numeros[0]+numeros[1]+numeros[2];

     writeln (suma);
     readln();


end.
