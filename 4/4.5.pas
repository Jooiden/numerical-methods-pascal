program FindPositiveRootCos;
var
  x, step: real;
  h_x: real;

function h(x: real): real;
begin
  h := cos(x) - 0.1 * x;
end;
begin
  step := 0.01;
  x := -3.14;

  while x <= 3.14 do
  begin
    h_x := h(x);
    
    if (h_x = 0) and (x > 0) then
      WriteLn('Положительный корень найден в точке: ', x:0:4)
    else if (h(x) * h(x + step) < 0) then
    begin
      var a := x;
      var b := x + step;
      var mid: real;

      while Abs(b - a) > 0.001 do
      begin
        mid := (a + b) / 2;
        if h(a) * h(mid) < 0 then
          b := mid
        else
          a := mid;
      end;

      if (a + b) / 2 > 0 then
        WriteLn('Уточненный положительный корень: ', (a + b) / 2:0:4);
    end;

    x := x + step;
  end;
end.
