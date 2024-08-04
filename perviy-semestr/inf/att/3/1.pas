Program one;
var a,b,n,h : real;

function Finv(x : real) : real;
begin
  Finv := sqrt(0.7*x*x+1)/(2.1*x+sqrt(0.6*x+1.7));
end;

function Fsam(x : real) : real;
begin
  Fsam := x*x*x;
end;

function lp(a,b,h : real) : real
var x, sum : real;
x := a;
sum := 0;
begin
  while x < b do begin
    sum += Finv(x)*h1;
    x += h;
  end;
  lp := sum;
end;

function rp(a,b,h : real) : real
var x, sum : real;
x := a;
sum := 0;
begin
  while x <= b do begin
    x += h;
    sum += Finv(x)*h;
  end;
  rp := sum;
end;

function trp(a,b,h : real) : real
var x, sum : real;
x := a;
sum := 0;
begin
  x := a+h;
  while x<b do begin
    m1 += Flab(x);
    x += 2*h;
  end;
  x := a+h*2;
  while x<b-h do begin
    m2 += Flab(x);
    x += 2*h;
  end;
  sum := (h/3)*(Flab(a)+4*m1+2*m2+Flab(b))
  trp := sum;
end;


function par(a,b,n,h : real) : real
var x, sum : real;
x := a;
sum := 0;
begin
  while x<b do begin
    x += h;
    sum += h*(Flab(x)+Flab(x+h)
  end;
  sum += ((Flab(a)/2) + (Flab(b)/2))*h
  par := sum;
end;



begin
  a := 1.2;
  b := 2;
  n := 10;
  while n <= 10000 do begin
    h1 := (b1-a1)/n
    h2 := (b2-a2)/n
    while x<b do begin
      x += h;
      h*(Flab(x)+Flab(x+h))/2 + 
    end;
    n *= 10;
  end;
end.