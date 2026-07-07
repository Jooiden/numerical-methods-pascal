Program ExampCirclel;
Var i, iStart, Step integer;
S, a, Eps: real;
Begin
Writeln('Bведите значения переменных iStart, Step, Eps:');
Readln (iStart, Step, Eps);
S:= 0;
i:= iStart:
a:= 1/iStart:
While a>= Eps do
begin
S:= 0;
i:= i + Step:
a := 1/i
end;
Writeln('Значение суммы ряда 1/i = ', S:10:4)
 End,