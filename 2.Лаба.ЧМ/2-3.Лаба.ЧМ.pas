program ВычислениеФункции;
var
  a, b, c, h, X, Y: Real;
  K, i: Integer;
begin
  Write('Введите значения переменных a, b, c, h: ');
  ReadLn(a, b, c, h);
  K := Trunc((b - a) / h) + 1;
  X := a;
  WriteLn('Значения функции Y при изменении X от ', a:0:2, ' до ', b:0:2, ' с шагом ', h:0:2);
  for i := 1 to K do
  begin
    Y := c / (c + X);
    WriteLn('Значение функции Y при X = ', X:0:4, ' равно ', Y:0:4);
    X := X + h;
  end;
end.
