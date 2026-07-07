program labodindva;
function Okruglenie(num: real; d: integer): real;
begin
  Okruglenie := Round(num * Power(10, d)) / Power(10, d);
end;
var num1, num2, num3: real;
begin
  num1 := 3.009982641;
  num2 := 24.00551;
  num3 := 21.161428;
  
  writeln('Округление числа ', num1:0:9, ':');
  writeln('До 2 знаков: ', Okruglenie(num1, 2):0:2);
  writeln('До 3 знаков: ', Okruglenie(num1, 3):0:3);
  writeln('До 4 знаков: ', Okruglenie(num1, 4):0:4);
  
  writeln('Округление числа ', num2:0:6, ':');
  writeln('До 2 знаков: ', Okruglenie(num2, 2):0:2);
  writeln('До 3 знаков: ', Okruglenie(num2, 3):0:3);
  writeln('До 4 знаков: ', Okruglenie(num2, 4):0:4);
  
  writeln('Округление числа ', num3:0:6, ':');
  writeln('До 2 знаков: ', Okruglenie(num3, 2):0:2);
  writeln('До 3 знаков: ', Okruglenie(num3, 3):0:3);
  writeln('До 4 знаков: ', Okruglenie(num3, 4):0:4);
end.
