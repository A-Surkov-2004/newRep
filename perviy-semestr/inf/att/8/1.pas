Program one;
var k,tol,t,r,c,u,ans: real;

begin

  tol := 0.001;
  r := 2;
  c := 0.01;
  u := 50;
  ans := 1;
  t := 0.01;
  repeat
    ans := u * (1-exp(-t/(r*c)));
    writeln('Время: ', t);
    writeln('Напряжение: ',ans);
    writeln();
    t+= 0.01;
  until abs(ans-u) <= tol;
end.