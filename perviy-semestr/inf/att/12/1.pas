Program one;
var v : array [1..3] of array [1..3] of integer = ((1,2,3),(4,5,6),(7,8,9));
    i,j,n,m,ans : integer;

begin
  n:= 3; m:= 3; ans := 0;
  for i := 1 to n do begin
    for j := 1 to m do
      ans += v[i,j];
  end;
  writeln(ans);
end.