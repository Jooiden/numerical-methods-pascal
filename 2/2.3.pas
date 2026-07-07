program CalculateY;

var
  a, b, c, h: real;
  x, y: real;
  N, K, i: integer;

begin
  Write('Введите a: ');
  ReadLn(a);
  Write('Введите b: ');
  ReadLn(b);
  Write('Введите c: ');
  ReadLn(c);
  Write('Введите шаг: ');
  ReadLn(h);

  K := Trunc((b - a) / h) + i; 
  N := 1; 
  x := a;

  for i := N to K do
  begin
    y := c * c / (c + x);
    WriteLn(x, ' Значение функции = ', y:0:4);
    x := x + h; // 1 10 2 1
  end;
end.