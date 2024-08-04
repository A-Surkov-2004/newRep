Program one;
var k,tol,s,x,m,f,lst,ans: real;

begin
  k := 1;
  tol := 0.0001;
  f := 1;
  x := 0.5;
  ans := 1;
  repeat
    m := x/k;
    lst := f;
    f := lst * m;
    ans += f;
    writeln(f);
    k+=1;
  until f < tol;
  writeln(ans);
end.