Program one;
var a, l, h, y, Q, n: real;

  function f(q : real) : real;
  begin
    n := 3.14*a/l*cos(q);
    f := (1 + sin(q)) * cos(n) / ((3.14/2)*(3.14/2) - (n)*(n));
  end;
  
begin
  h := 5;
  a := 13.5;
  l := 3;
  Q := 0;
  While Q<=90 do begin
    y := f(Q/57.3);
    writeln(Q, ' ', y);
    Q += h;
  end;
end.