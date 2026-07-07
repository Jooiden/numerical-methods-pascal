program Equation2;
var
  a, b, c: Real;
  epsilon: Real;
  
function f(x: Real): Real;
begin
  f := x * sin(x) - (x / 3);
end;

begin
  a := -1.1; 
  b := 1.3;
  epsilon := 0.0001;

  if (f(a) * f(b) > 0) then
  begin
    WriteLn('Нет корней на отрезке [-1, 1.3]');
    Exit;
  end;

  repeat
    c := (a + b) / 2;
    if f(c) = 0 then Break;
    if f(a) * f(c) < 0 then
      b := c
    else
      a := c;
  until abs(b - a) < epsilon;

  WriteLn('Корень уравнения: ', c:0:4);
end.
