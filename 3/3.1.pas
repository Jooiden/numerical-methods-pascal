program AbsoluteErrorCalculations;

var
  x, deltaX, fx, fx_delta, absoluteError: real;

function Sin(x: real): real;
begin
  Sin := x - (x * x * x) / 6 + (x * x * x * x * x) / 120 - (x * x * x * x * x * x * x) / 5040;
end;

function Ln(x: real): real;
var
  term, sum: real;
  i: integer;
begin
  x := (x - 1) / (x + 1);
  sum := 0;
  term := x;
  for i := 1 to 10 do
  begin
    sum := sum + term / (2 * i - 1);
    term := term * x * x;
  end;
  Ln := 2 * sum;
end;

function Sqrt(x: real): real;
var
  guess: real;
begin
  guess := x;
  while Abs(guess * guess - x) > 1e-7 do
    guess := (guess + x / guess) / 2;
  Sqrt := guess;
end;

function Tan(x: real): real;
begin
  Tan := x + (x * x * x) / 3 + (2 * x * x * x * x * x) / 15;
end;

function Cos(x: real): real;
begin
  Cos := 1 - (x * x) / 2 + (x * x * x * x) / 24 - (x * x * x * x * x * x) / 720;
end;

procedure CalculateAbsoluteErrorSin;
begin
  x := 0.88;
  deltaX := 0.00001;
  fx := Sin(x);
  fx_delta := Sin(x + deltaX);
  absoluteError := Abs(fx_delta - fx);
  writeln('1) f(x) = sin(0.88)');
  writeln('Значение: ', fx:0:7, ', Абсолютная погрешность: ', absoluteError:0:8);
end;

procedure CalculateAbsoluteErrorLn;
begin
  x := 45.0;
  deltaX := 0.00001;
  fx := Ln(x);
  fx_delta := Ln(x + deltaX);
  absoluteError := Abs(fx_delta - fx);
  writeln('2) f(x) = ln(45)');
  writeln('Значение: ', fx:0:7, ', Абсолютная погрешность: ', absoluteError:0:8);
end;

procedure CalculateAbsoluteErrorCustomFunction;
begin
  x := 0.69;
  deltaX := 0.00001;
  fx := x * x / Sqrt(x);
  fx_delta := (x + deltaX) * (x + deltaX) / Sqrt(x + deltaX);
  absoluteError := Abs(fx_delta - fx);
  writeln('3) f(x) = x^2 / sqrt(x), где x = 0.69');
  writeln('Значение: ', fx:0:7, ', Абсолютная погрешность: ', absoluteError:0:8);
end;

procedure CalculateAbsoluteErrorTan;
begin
  x := 0.123;
  deltaX := 0.00001;
  fx := Tan(x);
  fx_delta := Tan(x + deltaX);
  absoluteError := Abs(fx_delta - fx);
  writeln('4) f(x) = tan(0.123)');
  writeln('Значение: ', fx:0:7, ', Абсолютная погрешность: ', absoluteError:0:8);
end;

procedure CalculateAbsoluteErrorCosPlusSin;
var
  x1, x2, fx_cos, fx_sin, fx_cos_delta, fx_sin_delta: real;
begin
  x1 := 0.98;
  x2 := 0.567;
  deltaX := 0.00001;
  fx_cos := Cos(x1);
  fx_sin := Sin(x2);
  fx := fx_cos + fx_sin;
  fx_cos_delta := Cos(x1 + deltaX);
  fx_sin_delta := Sin(x2 + deltaX);
  absoluteError := Abs((fx_cos_delta + fx_sin_delta) - fx);
  writeln('5) f(x) = cos(0.98) + sin(0.567)');
  writeln('Значение: ', fx:0:7, ', Абсолютная погрешность: ', absoluteError:0:8);
end;

begin
  CalculateAbsoluteErrorSin;
  CalculateAbsoluteErrorLn;
  CalculateAbsoluteErrorCustomFunction;
  CalculateAbsoluteErrorTan;
  CalculateAbsoluteErrorCosPlusSin;
end.
