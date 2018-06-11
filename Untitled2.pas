program Ejercicio6Unidad5;
uses crt;
var
   cadenaGlobal : String;
function iniciales (nombreYApellido: String): String;
var
   i,largo: Integer;
begin
     iniciales:= nombreYApellido[1]+' ';
     largo := length(nombreYApellido);
           for i:=1 to largo do
           begin
           if (nombreYApellido[i] = ' ') then
           iniciales:= iniciales + nombreYApellido [i+1]+' ';
           end;
end;
begin
     writeln ('Ingrese nombre y apellido');
     readln (cadenaGlobal);
     writeln (iniciales (cadenaGlobal));
     readln ();

end.
