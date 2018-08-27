program primerMatriz;
const
     matriz : array [1..3,1..3] of integer = ((23,45,68),(34,99,12),(25,78,89));
var
   i,j : integer;
   mayor : integer;

begin
     for i:= 1 to 3 do
         for j:=1 to 3 do
              if matriz[i,j] > mayor then
                 mayor := matriz[i,j];
                 writeln (mayor);
                 readln();
end.
