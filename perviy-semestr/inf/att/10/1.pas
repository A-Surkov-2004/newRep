Program one;
var d,l,f,a, sina,cosa: real;

begin
  l := 0.1;
  d := 30/(180/Pi);
  f := 45/(180/Pi);
  sina := (cos(f)*sin(l))/sin(d);
  cosa := (sin(f)-sin(f)*cos(d))/(cos(f)*sin(d));
  a := arcsin(sina);
  if (sina> 0.0) and (cosa > 0.0) then write(abs(a))
  else if (sina > 0.0) and (cosa < 0.0) then write(Pi - abs(a))
  else if (sina < 0.0) and (cosa < 0.0) then write(Pi + abs(a))
  else
    write(2*Pi-abs(a));
  writeln(' радиан');
end.