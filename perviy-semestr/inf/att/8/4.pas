Program one;
var k,tol,s,x,m,f,lst,ans: real;

begin
  k := 1;
  tol := 0.0001;
  x := 3.14/6;
  f := 1;
  ans := 1;
  repeat
    m := -1*(x*x)/(4*k*k - 2*k);
    lst := f;
    f := lst * m;
    ans += f;
    writeln(f);
    k+=1;
  until abs(f) <= tol;
  writeln(ans);
end.