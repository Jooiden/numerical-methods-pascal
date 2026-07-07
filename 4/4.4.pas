program FindRoots;

var
  x: real;
  left, right, step: real;
  func: real;
begin
  left := -2;  
  right := 2; 
  step := 0.01; 

  writeln('Корни уравнения sqrt(x) + 1 = 1/x на отрезке [-2, 2]:');
  
  x := left;
  while x <= right do
  begin
    if x > 0 then
      func := sqrt(x) + 1 - (1 / x)
    else
      func := 0; 
    if (func < 0) and ((sqrt(x + step) + 1 - (1 / (x + step))) > 0) then
      writeln('Корень найден в промежутке: [', x:0:2, ' ; ', (x + step):0:2, ']');

    x := x + step; 
  end;

  readln;
end.