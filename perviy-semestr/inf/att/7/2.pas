Program one;
var x1,x0,tol : real;

function f1(x:real):real;
  begin
    f1 := arctan(x)-(1/(3*x*x*x))
end;

function f2(x:real):real;
  begin
    f2 := 1/(x*x+1) + 1/(x*x*x*x)
end;

begin
  tol := 0.000001;
  x1 := -1.98;
  repeat
   x0 := x1;
   x1 -= (f1(x1)/f2(x1));
   writeln(x0);
  until abs(x1-x0) <= tol;
  writeln(x1);
end.