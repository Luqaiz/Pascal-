program clase04del06 ;

procedure limpiarPantalla ();
var
   i : integer;
begin
     for i:= 0 to 25 do
         writeln( );
end;

begin
     writeln ('hola');
     readln ();
     limpiarPantalla();
     readln ();

end.
