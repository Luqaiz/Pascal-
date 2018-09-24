program ejer;
uses crt;
const
    alumnos=3;
    materias=4;
type
    nyp=array[1..alumnos] of string;
    Notas=array[1..alumnos,1..materias] of real;
var
    nomYApellido:nyp;
    nota:Notas;
    i,j,Mpromedio,Ppromedio,opcion:integer;
 procedure insertar(var z:nyp;var g:Notas);
 var
    i,j:integer;
 begin
    for i:=1 to alumnos do
    begin
         writeln;
         write('ingrese su nombre y apellido: ');
         readln(z[i]);
          for j:=1 to materias do
          begin
          repeat
             write('ingrese nota de la materia ',j,': ');
             readln(g[i,j]);
              if ((g[i,j]<1) or (g[i,j]>10)) then
              begin
                  writeln('por favor, ingrese su nota nuevamente');
              end;
             until ((g[i,j]>=1) and (g[i,j]<=10));
          end;
    end;
 end;
 function promedio(x:Notas; i:integer):real;
 var
    k,j:integer;
    suma,p:real;
 begin
     suma:=0;
     for k:=i to i do
     begin
        for j:=1 to materias do
        begin
           suma:=suma+x[i,j];
        end;
     end;
     p:=suma/materias;
     promedio:=p;
 end;
 function mejor(x:Notas):integer;
 var
    i,j,m:integer;
    maximo:real;
 begin
    m:=0;
    maximo:=1;
    for i:=1 to alumnos do
    begin
       for j:=materias to materias do
       begin
        if (maximo<=x[i,j]) then
        begin
           maximo:=x[i,j];
           m:=i;
        end;
       end;
    end;
    mejor:=m;
 end;
 function peor(x:Notas):integer;
 var
    i,j,p:integer;
    minimo:real;
 begin
    p:=0;
    minimo:=10;
    for i:=1 to alumnos do
    begin
       for j:=materias to materias do
       begin
        if (minimo>=x[i,j]) then
        begin
           minimo:=x[i,j];
           p:=i;
        end;
       end;
    end;
    peor:=p;
 end;
 procedure promedioGRAL(x:Notas);
 var
   i,j:integer;
   suma,res:real;
 begin
    suma:=0;
    for i:=1 to alumnos do
    begin
       for j:=materias to materias do
       begin
          suma:=suma+x[i,j];
       end;
    end;
    res:=suma/alumnos;
    writeln('promedio general: ',res:2:2);
     if ((res>=1) and (res<=3)) then
     begin
          writeln('institucion deficiente');
     end;
     if ((res>=4) and (res<=7)) then
     begin
          writeln('institucion promedio');
     end;
     if ((res>=7) and (res<=10)) then
     begin
          writeln('institucion excelente');
     end;
 end;
 procedure ordena(y:nyp; x:Notas);
 var
    i,j,k,l:integer;
    aux:real;
    auxn:string;
 begin
    for i:=1 to alumnos-1 do
           begin
            for j:=materias to materias do
            begin
              for k:=i+1 to alumnos do
              begin
                for l:=materias to materias do
                begin
                 if (x[i,j]<x[k,l]) then
                  begin
                    auxn:=y[i];
                    y[i]:=y[k];
                    y[k]:=auxn;
                    aux:=x[i,j];
                    x[i,j]:=x[k,l];
                    x[k,l]:=aux;
                  end;
                end;
              end;
           end;
      end;
      writeln('promedios ');
      writeln;
      for i:=1 to alumnos do
      begin
        for j:=materias to materias do
        begin
           writeln(y[i],': ',x[i,j]:2:2);
        end;
      end;
 end;
begin
    repeat
     writeln('1-ingresar datos de los alumnos');
     writeln('2-mostrar promedios');
     writeln('3-mejor y peor promedio');
     writeln('4-promedio general');
     writeln('5-salir');
     write('presione opcion: ');
     readln(opcion);
     clrscr;

     case opcion of
     1: begin
          writeln('ingrese datos de los alumnos');
          writeln;
          insertar(nomYApellido,nota);
          clrscr;
        end;
     2: begin
           for i:=1 to alumnos do
           begin
              for j:=materias to materias do
              begin
                nota[i,materias]:=promedio(nota,i);
              end;
           end;
            ordena(nomYApellido,nota);
            readln;
            clrscr;
        end;
     3: begin
          Mpromedio:=mejor(nota);
          writeln('mejor promedio: ',nomYApellido[Mpromedio],': ',nota[Mpromedio,materias]:2:2);
          Ppromedio:=peor(nota);
          writeln('peor promedio: ',nomYApellido[Ppromedio],': ',nota[Ppromedio,materias]:2:2);
          readln;
          clrscr;
        end;
     4: begin
           promedioGRAL(nota);
           readln;
           clrscr;
        end;
     end;
      until opcion=5;
end.
