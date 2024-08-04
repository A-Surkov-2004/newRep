Program one;
var n, i,z, fct : integer;
    d1,d2,d3,a,y,k : real;
  
begin
  d1 := -1; d2:= 0; d3 := 1;
  a := 2; k := 3;
  fct := 1;
  for i := 2 to 10 do
    fct *= i;
  
  writeln('Введите размер массива');
  readln(n);
  var v : array [1..1000] of real;
  writeln('Введите элементы массива одной строкой через пробел. (-1 <= x <= 1)');
  for i := 1 to n do 
    read(v[i]);
  
  y := 0;
  for i := 1 to n do begin
    if((v[i] >= d1) and (v[i] < d2))then begin
      y:= (a+v[i])**(1/k);
      write(y,'; ');
    end
    else if(v[i] <= d3) then begin
      z := 0;
      while (z < 10) do begin
        y += ((z**v[i] + v[i]));
        z += 2;
      end;
      write(y/fct,'; ');
    end
    else
      write('er; ');
  end;
end.

//-1 -0.5 -0.25 0 0.25 0.5 1