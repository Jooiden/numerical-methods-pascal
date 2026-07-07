program FindRoots;

var
  x, step, f: Real;
  hasRoot: Boolean;

begin
  step := 0.1;
  hasRoot := False;
  x := -2.0;
  
  while x <= 2.0 do
  begin
    if x > 0 then
    begin
      f := sqrt(x) + 1 - 1/x;
      
      if Abs(f) < 0.01 then
      begin
        hasRoot := True;
        writeln('Корень уравнения найден: x = ', x:0:2);
      end;
    end;
    x := x + step;
  end;
  
  if not hasRoot then
    writeln('Корни уравнения не найдены на заданном интервале.')
  else
    writeln('Корни уравнения найдены на заданном интервале.');
end.
