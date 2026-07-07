program ErrorCalculation;
var
  num1, num2, num3, num4: Real; 
  absError1, absError2, absError3, absError4: Real; 
  relError1, relError2, relError3, relError4: Real;
begin
  num1 := 36.7;
  num2 := 2.489;
  num3 := 31.010;
  num4 := 0.031;
  absError1 := 0.1;
  absError2 := 0.001;
  absError3 := 0.001;
  absError4 := 0.001;
  relError1 := absError1 / num1;
  relError2 := absError2 / num2;
  relError3 := absError3 / num3;
  relError4 := absError4 / num4;
  WriteLn('Число: ', num1:0:1);
  WriteLn('Абсолютная погрешность: ', absError1:0:1);
  WriteLn('Относительная погрешность: ', relError1:0:6);
  WriteLn;
  WriteLn('Число: ', num2:0:3);
  WriteLn('Абсолютная погрешность: ', absError2:0:3);
  WriteLn('Относительная погрешность: ', relError2:0:6);
  WriteLn;
  WriteLn('Число: ', num3:0:3);
  WriteLn('Абсолютная погрешность: ', absError3:0:3);
  WriteLn('Относительная погрешность: ', relError3:0:6);
  WriteLn;
  WriteLn('Число: ', num4:0:3);
  WriteLn('Абсолютная погрешность: ', absError4:0:3);
  WriteLn('Относительная погрешность: ', relError4:0:6);
  WriteLn;
end.
