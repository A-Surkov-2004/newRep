Program one;
var v : array [1..100] of array [1..100] of integer;
    i,j,n,m : integer;

begin
  ans := 0;
  
  //ввод
  writeln('Введите кол-во строк и столбцов');
  read(n,m);
  writeln('Построчно введите элементы матрицы через пробел');
  for i := 1 to n do begin
    for j := 1 to m do 
      read(v[i][j]);
  end;
  
  //решение
  for j := 1 to m do begin
    for i := j+1 to n do
      v[i][j] := 0;
  end;
  
  //вывод
  writeln('Ответ:');
  for i := 1 to n do begin
    for j := 1 to m do
      write(v[i,j],' ');
    writeln();
  end;
end.