program labodinpyat;
uses System;
var
  x: array[1..2] of Real;
  i: Integer;
  cos1, ln1: Real;
begin
  x[1] := 1;
  x[2] := 8;
  writeln('     x     |   cos(x)   |   ln(x)   ');
  writeln('------------------------------------');
  for i := 1 to 2 do
  begin
    cos1 := cos(x[i]);
    ln1 := ln(x[i]);
    writeln(x[i]:10:2, ' | ', cos1:10:4, ' | ', ln1:10:4);
  end;
end.