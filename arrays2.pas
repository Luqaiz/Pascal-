program arrays2;
var
numeros: array[1..10] of integer;
i: Integer;

begin
     writeln ('Ingrese 10 numeros');
     for i := 1 to 10 do
     begin
          readln (numeros[i]);
     end;

     for i:= 1 to 10 do
      begin
      if i mod 2<>0 then
         writeln (numeros[i]);
      end;
      readln();

end.
