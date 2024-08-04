Program one;
var a,b,n,h, ans : real;

function f(n,fct,b : integer) : real;
var sum, mnoj : real;
var i : integer;
begin
  sum := 0;
  for i:=1 to n do 
  begin
    sum += 2*i+b;
  end;
  mnoj := 1;
  for i:=1 to fct do begin
    mnoj *= i;
  end;
  f := sum/mnoj;
end;


begin
  var z : real;
  z := f(10, 3, 1)+f(20,5,0)+f(40,8,3);
  writeln(z);
end.