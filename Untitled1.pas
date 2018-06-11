program ABM;
uses crt;
var
   opcion : integer;
   seguir : char;
   respuestaGlobal : char;
procedure menu ();
begin
     writeln ('1- ALTA');
     writeln ('2- BAJA');
     writeln ('3- MODIFICACION');
     writeln ('4- SALIR');

end;

procedure alta (respuesta : char);
begin
     clrscr();
     writeln ('Entro a la parte de altas');
     writeln ('Desea volver al menu anterior? s/n');
     readln (respuesta);
            if (respuesta = 's') then ;
               menu();
     clrscr();
end;
procedure baja (respuesta : char);
begin
     clrscr();
     writeln ('Entro a la parte de bajas');
     writeln ('Desea volver al menu anterior? s/n');
     readln (respuesta);
            if (respuesta = 's') then;
               menu();
     clrscr();
end;
procedure modificacion(respuesta : char);
begin
     clrscr();
     writeln ('Entro a la parte de modificaciones');
     writeln ('Desea volver al menu anterior? s/n');
     readln (respuesta);
            if (respuesta = 's') then;
               menu();
     clrscr();
end;

begin
     seguir := 's';
     respuestaglobal := 'n';

     while (seguir = 's') do
     begin
          menu ();

          readln (opcion);

          case (opcion) of
          1:alta(respuestaGlobal);
          2:baja(respuestaGlobal);
          3:modificacion(respuestaGlobal);
          4:seguir := 'n';
          end;
    end;

end.
