program Equation3;
var
  a, b, c: Real;
  epsilon: Real;
  
function f(x: Real): Real;
begin
  f := x * sin(x) - 2 * cos(x);
end;

begin
  a := -1.3; 
  b := 1.6;
  epsilon := 0.0001;

  if (f(a) * f(b) > 0) then
  begin
    WriteLn('Нет корней на отрезке [-1.3, 1.6]');
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
