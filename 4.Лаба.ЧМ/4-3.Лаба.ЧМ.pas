program FindRoots;

var
  x, step, f: Real;

begin
  step := 0.1;
  x := -6.28;
  
  while x <= 6.28 do
  begin
    if x > 0 then
    begin
      f := sin(2 * x) + ln(x);
      
      if Abs(f) < 0.01 then
      begin
        writeln('Корень уравнения: x = ', x:0:2);
      end;
    end;
    x := x + step;
  end;
end.
