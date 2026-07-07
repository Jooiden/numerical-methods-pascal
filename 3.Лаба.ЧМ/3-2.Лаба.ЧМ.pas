program ErrorCalculation;

type
  VariantArray = array[1..15] of Real;

var
  x: VariantArray;
  absoluteError, relativeError: VariantArray;
  i: Integer;

begin
  x[1] := 3549;
  x[2] := 32.147;
  x[3] := 0.0002568;
  x[4] := 7.544;
  x[5] := 198.745;
  x[6] := 37.4781;
  x[7] := 0.183814;
  x[8] := 0.009145;
  x[9] := 11.3721;
  x[10] := 0.2538;
  x[11] := 10.2118;
  x[12] := 4.394;
  x[13] := 0.8437;
  x[14] := 129.66;
  x[15] := 48.847;
  for i := 1 to 15 do
  begin
    if x[i] <> 0 then
      absoluteError[i] := 1 / (10 ** (Trunc(Log10(x[i])) + 1))
    else
      absoluteError[i] := 0;
   
    if x[i] <> 0 then
      relativeError[i] := absoluteError[i] / x[i]
    else
      relativeError[i] := 0;
  end;

  for i := 1 to 15 do
  begin
    WriteLn('Номер ', i, ':');
    WriteLn('  x = ', x[i]:0:10);
    WriteLn('  Абсолютная погрешность = ', absoluteError[i]:0:10);
    WriteLn('  Относительная погрешность = ', relativeError[i]:0:10);
    WriteLn;
  end;
end.
