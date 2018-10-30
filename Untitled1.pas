{Crear un programa que permita ingresar la informacion de 20 alumnos, cada alumno debe contar con Nombre, Apellido, DNI y Materias. El campo materias debe ser otro registro
con los campos NombreMaterias, Notas. Cada alumno tendra 4 notas
1 Pedirle al usuario que ngrese los datos
2 Validar que el dni ingresado se encuentre entre 0 y 100.000.000
3 Generar una funcion que devuelva el Apellido del alumno con promedio mas alto
4 Mostrar por pantalla el apellido y dni de todos los alumnos que hayan aprobado todas las materias}
program parcial;
uses crt;

const
     alumnos = 2;
     notas = 4;
type
    eMaterias = record
              nombreMaterias : String;
              nota : Integer;
              end;
              tMaterias = array [1..notas] of eMaterias;

    eAlumno = record
            nombre : String;
            apellido : String;
            dni : Integer;
            materias : tMaterias
            end;

            tAlumno = array [1..alumnos] of eAlumno;

var
   lista : tAlumno;
procedure ingresar (var x:tAlumno);
var
   i,j : integer;
begin

     for i := 1 to alumnos do
     begin
          writeln ('Presione enter para ingresar los datos');
          clrscr;
          writeln ('Ingrese el nombre');
          readln (x[i].nombre);
          writeln ('Inrese el apellido');
          readln (x[i].apellido);
                 repeat
                       writeln ('Ingrese el DNI');
                       readln (x[i].dni);
                 until (x[i].dni > 0) and (x[i].dni < 100000000);
           for j := 1 to notas do
           begin
               writeln ('Ingrese nombre de la materia');
               readln (x[i].materias[j].nombreMaterias);
               writeln ('Ingrese nota de la materia');
               readln (x[i].materias[j].nota);
               clrscr;
           end;
     end;

end;

procedure  aprobados (var x: tAlumno);
var
   j,i,contador : integer;
begin
     contador := 0 ;

     for i := 1 to alumnos do
     begin
          for j := 1 to notas do
          if (x[i].materias[j].nota >= 4) then
          begin
               contador := contador + 1;
                        if (contador = 4) then
                           begin
                                writeln (x[i].apellido);
                                writeln (x[i].dni);
                           end;

          end;
     end;
end;

begin

ingresar (lista);
aprobados (lista);
readln ();

end.
