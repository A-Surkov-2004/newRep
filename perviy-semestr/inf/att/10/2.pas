Program one;
var n: integer;

begin
  while true do begin
    readln(n);
    if n >= 0 then begin
      write(n, ' ворон');
      n := n mod 100;
      if not((n > 10) and (n < 20)) then
        n := n mod 10;
      case n of
        1 :  write('а');
        2,3,4:  write('ы');
      end;
    end
    else
      write('Отрицательное количество ворон???');
    writeln();
  end;
end.