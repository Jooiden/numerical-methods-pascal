program labodinchetire;
var
  x_real, y_real: real;
  x_single, y_single: single;
  x_double, y_double: double;
begin
  x_real := 8;
  x_single := 8;
  x_double := 8;

  y_real := sin(x_real);
  y_single := sin(x_single);
  y_double := sin(x_double);

  writeln('Точность вычисления sin(x) при x = 8 для различных типов:');
  writeln('--------------------------------------------');
  writeln('Тип Real:');
  writeln('sin(x) = ', y_real);  
  writeln('--------------------------------------------');
  writeln('Тип Single:');
  writeln('sin(x) = ', y_single);  
  writeln('--------------------------------------------');
  writeln('Тип Double:');
  writeln('sin(x) = ', y_double);

end.
