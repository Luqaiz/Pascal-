program ejercicio7Unidad5;
uses crt;
var
   num1Global, num2Global, num3Global : Integer;

function funcionPotencia (num1, num2: Integer): Real;
var
   i, potencia: Integer;
begin
     potencia := 1;

             for i:=1 to num2 do
                 potencia := potencia*num1 ;

     funcionPotencia := potencia;
end;

function PosNeg (num: Integer): String;
begin

     if (num < 0) then
        PosNeg := 'Es negativo'
        else
            PosNeg := 'Es Positivo';

end;

begin
     writeln('Ingrese un num');
     readln(num1Global);
     writeln(PosNeg(Num1Global));
     writeln('Ingrese un num');
     readln(num2Global);
     writeln(PosNeg(Num2Global));
     writeln('Ingrese un num');
     readln(num3Global);
     writeln(PosNeg(Num3Global));

     writeln ('La potencia es: ', funcionPotencia(num1Global, num2Global));
     readln();
end.
