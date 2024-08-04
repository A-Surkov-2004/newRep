Program one;
var v : array [1..100] of array [1..100] of integer;
    sum, pos, mem : array [1..100] of integer;
    i,j,n,m,p : integer;

begin
  ans := 0;
  
  //ввод
  writeln('Введите кол-во строк и столбцов');
  read(n,m);
  writeln('Построчно введите элементы матрицы через пробел');
  for i := 1 to n do begin
    pos[i] := i;
    for j := 1 to m do 
      read(v[i][j]);
  end;
  
  //решение
  for i := 1 to n do begin
    for j := 1 to m do
      sum[i] += v[i,j];
  end;
  
  for i := 1 to n do begin // бульк!
    for j := 2 to n do begin
      if sum[pos[j-1]] > sum[pos[j]] then begin
        p := pos[j]; pos[j] := pos[j-1]; pos[j-1] := p;
      end;
    end; // зато универсальное
  end;
  
  //вывод
  writeln('Ответ:');
  for i := 1 to n do begin
    for j := 1 to m do
      print(v[pos[i]][j]);
     writeln();
  end;
end.