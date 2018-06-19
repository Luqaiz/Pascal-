program ejercicio8Unidad5;
uses crt;

var
   numGlobal : String;

function puntos (num : String): String;
var
   totalNum, i : Integer;
   acum : String;
begin
     acum := ' ';
     totalNum := length(num);

              if(totalNum > 3) then
              begin
                   for i:=0 to 2 do
                       acum := acum + num[totalNum-i];

                       acum := acum + '.';
                       totalNum := totalNum - 3 ;
                       puntos := acum;
              end;
end;

begin
     writeln ('Escribe un numero');
     readln (numGlobal);

    writeln (puntos(numGlobal));
    readln();

end.
