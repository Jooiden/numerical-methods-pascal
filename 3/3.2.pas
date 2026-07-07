program BoundaryMethodErrorCalculation;

var
  Nga, Vga, approxValue, absoluteError, relativeError: real;

begin
  writeln('Введите нижнюю границу (НГ) параметра a: ');
  readln(Nga);
  
  writeln('Введите верхнюю границу (ВГ) параметра a: ');
  readln(Vga);
  
  writeln('Введите приближенное значение параметра a: ');
  readln(approxValue);

  absoluteError := (Vga - Nga) / 2;

  if approxValue <> 0 then
    relativeError := absoluteError / approxValue
  else
  begin
    writeln('Ошибка: приближенное значение не должно быть равно нулю.');
    exit;
  end;

  writeln('Абсолютная погрешность: ', absoluteError:0:5);
  writeln('Относительная погрешность: ', relativeError:0:5);
end.
