Program one;
const a : array [1..5] of integer = (1, 3, 5, 7, 9);
      b : array [1..5] of integer = (2, 4, 6, 8, 10);
var i : integer;
    c : array [1..10] of integer;

begin
  for i := 1 to 5 do begin
    c[i] := a[i];
    c[i+5] := b[i];
  end;
  for i := 1 to 10 do
    write(c[i], ' ');
end.