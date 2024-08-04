Program one;
var n, i, ans, m : integer;
    v : array [1..100] of integer;
    
begin
  writeln('Введите размер массива');
  readln(n);
  writeln('Введите элементы массива одной строкой через пробел');
  for i := 1 to n do 
    read(v[i]);
  writeln('Введите число');
  readln(m);
  ans := 0;
  for i := 1 to n do begin
    if (v[i] > m) then
      ans += v[i];
  end;
  writeln('Ответ:');
  writeln(ans);
end.