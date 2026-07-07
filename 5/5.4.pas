program Equation4;
var
  a, b, c: Real;
  epsilon: Real;
  
function f(x: Real): Real;
begin
  f := sin(2 * x) - 2 * sqr(x);
end;

begin
  a := -3.1; 
  b := 3.2;
  epsilon := 0.0001;

  if (f(a) * f(b) > 0) then
  begin
    WriteLn('Нет корней на отрезке [-3.1, 3.2]');
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
