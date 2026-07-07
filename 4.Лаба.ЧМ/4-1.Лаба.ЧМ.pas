program FindRoots;

var
  x, step, left, right: Real;

begin
  step := 0.1;
  x := -10.0;
  
  while x <= 10.0 do
  begin
    if x > 0 then
    begin
      left := ln(x) / ln(10) + 6;
      right := x * x;
      
      if Abs(left - right) < 0.01 then
      begin
        writeln('Корень уравнения: x = ', x:0:2);
      end;
    end;
    x := x + step;
  end;
end.
