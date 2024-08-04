Program one;
var n, i, max, j, m : integer;
    v : array [1..100] of integer;
    
begin
  writeln('Введите размер массива');
  readln(n);
  writeln('Введите элементы массива одной строкой через пробел');
  for i := 1 to n do 
    read(v[i]);
  for i := 1 to n-1 do begin
    max := i;
    for j := i+1 to n do begin
      if v[j] > max then
        max := j;
    end;
    m := v[i];
    v[i] := v[max];
    v[max] := m;
  end;
  for i := 1 to n do 
    write(v[i],' ');
end.