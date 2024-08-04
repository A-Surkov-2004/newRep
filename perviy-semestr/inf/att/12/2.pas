Program one;
var v : array [1..100] of array [1..100] of integer;
    i,j,n,m,ans : integer;

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
  i:= 1; j := 1;
  while ((i <= n) and (j <= m))do begin
    ans += v[i,j];
    i+=1; j+=1;
  end;
  writeln('Сумма элементов главной диагонали: ', ans);
  i:= n; j := 1;
  ans := 0;
  while ((i >= 1) and (j <= m))do begin
    ans += v[i,j];
    i-=1; j+=1;
  end;
  writeln('Сумма элементов побочной диагонали: ', ans);
  // Универсальное решение; O(min(n,m));
end.