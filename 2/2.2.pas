Program ExampleCircle1;
var i, iStart, Step: integer;
S, a, Eps : real;
begin
  writeln ('Введите значения переменных  iStart, Step, Eps: ');
  readln(iStart, Step, Eps);
  S:=0;
  i:= iStart;
  a:=1/iStart;
  While a >= Eps do
  begin
    S:= S+a;
    i:= i+Step;
    a:= 1/i;
  end;
  writeln('Значение суммы ряда 1/i = ', S:10:4);
end.
