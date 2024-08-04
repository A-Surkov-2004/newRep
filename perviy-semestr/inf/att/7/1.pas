Program one;
var ans,n : integer;
  
begin
  ans := 11;
  while ans > 10 do begin
    writeln('Введите трёхзначное число');
    readln(n);
    ans := 0;
    if (n >= 1000) or (n < 100) then begin
      writeln('Число не является трёхзначным');
      n := 0;
      ans := 42;
    end
    else begin
      while n > 0 do begin
        ans += (n mod 10);
        n := n div 10;
      end;
      writeln('Сумма цифр числа:');
      writeln(ans);
    end;
  end;
end.