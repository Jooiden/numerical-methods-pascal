program AbsoluteError;
var
  x, result, exactValue, absoluteError: Real;
function Sin(x: Real): Real;
var
  term, sum: Real;
  i, sign: Integer;
begin
  term := x;
  sum := x;
  i := 1;
  sign := -1;
  while Abs(term) > 1e-10 do
  begin
    term := term * x * x / ((2 * i) * (2 * i + 1));
    sum := sum + sign * term;
    sign := -sign;
    i := i + 1;
  end;
  Sin := sum;
end;
function Ln(x: Real): Real;
var
  term, sum: Real;
  i: Integer;
begin
  term := (x - 1) / (x + 1);
  sum := 2 * term;
  i := 3;
  while Abs(term) > 1e-10 do
  begin
    term := term * (x - 1) * (x - 1) / (x + 1) / (x + 1);
    sum := sum + 2 * term / i;
    i := i + 2;
  end;
  Ln := sum;
end;
function Tan(x: Real): Real;
begin
  Tan := Sin(x) / Cos(x);
end;
function Cos(x: Real): Real;
var
  term, sum: Real;
  i, sign: Integer;
begin
  term := 1;
  sum := 1;
  i := 1;
  sign := -1;
  while Abs(term) > 1e-10 do
  begin
    term := term * x * x / ((2 * i - 1) * (2 * i));
    sum := sum + sign * term;
    sign := -sign;
    i := i + 1;
  end;
  Cos := sum;
end;
begin
  x := 0.88;
  exactValue := Sin(x);
  result := sin(x);
  absoluteError := Abs(result - exactValue);
  WriteLn('Абсолютная погрешность для f(x)=sin(0.88): ', absoluteError:0:10);
  x := 45;
  exactValue := Ln(x);
  result := ln(x);
  absoluteError := Abs(result - exactValue);
  WriteLn('Абсолютная погрешность для f(x)=ln(45): ', absoluteError:0:10);
  x := 0.69;
  exactValue := x * x / Sqrt(x);
  result := x * x / sqrt(x);
  absoluteError := Abs(result - exactValue);
  WriteLn('Абсолютная погрешность для f(x)=x^2/sqrt(x), где x=0.69: ', absoluteError:0:10);
  x := 0.123;
  exactValue := Tan(x);
  result := tan(x);
  absoluteError := Abs(result - exactValue);
  WriteLn('Абсолютная погрешность для f(x)=tan(0.123): ', absoluteError:0:10);
  x := 0.98;
  exactValue := Cos(x) + Sin(0.567);
  result := cos(x) + sin(0.567);
  absoluteError := Abs(result - exactValue);
  WriteLn('Абсолютная погрешность для f(x)=cos(0.98)+sin(0.567): ', absoluteError:0:10);
end.
