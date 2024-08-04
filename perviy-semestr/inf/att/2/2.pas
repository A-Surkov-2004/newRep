Program two;
var n, q, a,l, ans, m, p : real;
var i : integer;

begin
  a := 13.5;
  l := 3;
  m := (3.14*a)/l;
  p := (3.14*3.14)/4;
  for i := 0 to 90 do begin
    q := i/180*pi;
    n := m * cos(q);
    ans := ((1+sin(q))*cos(n))/((p)-(n*n));
    writeln(i, ' ', ans:2:5);
  end;
end.