program FindRoots;

var
  x, step, f: Real;

begin
  step := 0.1;
  x := -15.0;
  
  while x <= 15.0 do
  begin
    f := x * sin(x) - 1;
    
    if Abs(f) < 0.01 then
    begin
      writeln('Корень уравнения: x = ', x:0:2);
    end;
    
    x := x + step;
  end;
end.
