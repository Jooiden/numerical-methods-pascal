program RoundingNumbers;
var
  num1, num2, num3: Real;
  rounded2_1, rounded2_2, rounded2_3: Real; 
  rounded3_1, rounded3_2, rounded3_3: Real; 
  rounded4_1, rounded4_2, rounded4_3: Real;
begin

  num1 := 3.009982641;
  num2 := 24.00551;
  num3 := 21.161428;

  rounded2_1 := Round(num1 * 100) / 100;
  rounded2_2 := Round(num2 * 100) / 100;
  rounded2_3 := Round(num3 * 100) / 100;

  rounded3_1 := Round(num1 * 1000) / 1000;
  rounded3_2 := Round(num2 * 1000) / 1000;
  rounded3_3 := Round(num3 * 1000) / 1000;

  rounded4_1 := Round(num1 * 10000) / 10000;
  rounded4_2 := Round(num2 * 10000) / 10000;
  rounded4_3 := Round(num3 * 10000) / 10000;

  WriteLn('Число ', num1:0:9, ' округлено до 2 знаков: ', rounded2_1:0:2);
  WriteLn('Число ', num1:0:9, ' округлено до 3 знаков: ', rounded3_1:0:3);
  WriteLn('Число ', num1:0:9, ' округлено до 4 знаков: ', rounded4_1:0:4);

  WriteLn('Число ', num2:0:5, ' округлено до 2 знаков: ', rounded2_2:0:2);
  WriteLn('Число ', num2:0:5, ' округлено до 3 знаков: ', rounded3_2:0:3);
  WriteLn('Число ', num2:0:5, ' округлено до 4 знаков: ', rounded4_2:0:4);

  WriteLn('Число ', num3:0:6, ' округлено до 2 знаков: ', rounded2_3:0:2);
  WriteLn('Число ', num3:0:6, ' округлено до 3 знаков: ', rounded3_3:0:3);
  WriteLn('Число ', num3:0:6, ' округлено до 4 знаков: ', rounded4_3:0:4);

end.
