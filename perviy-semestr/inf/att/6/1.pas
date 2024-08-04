Program one;
const f : array [1..6]of real = (1.0, 20000.0, 40000.0, 60000.0, 80000.0, 100000.0);
var r, c, l, z, xc, xl, fi: real;
    i : integer;

begin
  r := 2;
  c := 0.0000002;
  l := 0.00005;
  
  writeln('Все значения выводятся в системе СИ');
  writeln();
  
  for i := 1 to 6 do 
  begin
    xl := 2 * 3.14 * l * f[i];
    xc := 1/(2*3.14*c*f[i]);
    z := xc*sqrt(xl*xl+r*r) / sqrt(r*r + (xl - xc)*(xl - xc));
    fi := arctan(xl/r - (xl*xl)/(r*xc) - r/xc) ;
    writeln('Частота: ', f[i]);
    writeln('Фазовый угол: ', fi);
    writeln('Реактивное сопротивление: ', z);
    writeln();
  end;
end.