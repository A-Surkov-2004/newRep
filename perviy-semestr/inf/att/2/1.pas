Program one;
var n, i : longint;
var ans : BigInteger;
  
begin
  readln(n);
  ans := 1;
  for i := 1 to n do 
      ans *= i;
  writeln(ans);
end.