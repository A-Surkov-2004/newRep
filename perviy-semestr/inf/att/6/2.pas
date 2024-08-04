Program one;
var n, i : integer;
    m : real;
  
begin
  writeln('Введите размер массива');
  readln(n);
  var v : array [1..100] of real;
  writeln('Введите элементы массива одной строкой через пробел');
  for i := 1 to n do 
    read(v[i]);
  i := 2;
  while i <= n do begin
    m := v[i-1];
    v[i-1] := v[i];
    v[i] := m;
    write(v[i-1], ' ', v[i], ' ');
    i += 2;
  end;
  if(n mod 2 = 1) then
    write(v[n]);
end.