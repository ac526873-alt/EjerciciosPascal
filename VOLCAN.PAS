program VOLCAN1;
uses Crt;

var
  i, j, N, espacios: integer;
const
  MAX = 64;

begin
  N := 2;

  while N <= MAX do
  begin
    espacios := (MAX - N) div 2;
    for i := 0 to espacios do
      write(' ');
    for j := 1 to N do
      write('*');

    writeln;

    N := N * 2;
  end;

  readln;
end.

