program ИсследованиеТочностиВычислений;
var
  X, Z, Y: Real; 
  a, b, c, h, X0, Xc, n: Real;
  i, K: Integer; 
function Sqrt(x: Real): Real;
var
  guess, epsilon: Real;
begin
  epsilon := 1e-10;
  guess := x / 2;
  while Abs(guess * guess - x) > epsilon do
    guess := (guess + x / guess) / 2;
  Sqrt := guess;
end;
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
  a := 21.356;
  h := 0.25;
  b := 10.0;
  K := Trunc((b - a) / h) + 1;
  X := a;
  WriteLn('A)');
  WriteLn(' X', ' ':10, 'Z');
  for i := 1 to K do
  begin
    Z := X * h / (X + b);
    WriteLn(X:0:4, ' ':10, Z:0:4);
    X := X + h;
  end;
  WriteLn;
  a := 1.0;
  b := 10.0;
  h := 0.5;
  c := 2.0;
  K := Trunc((b - a) / h) + 1;
  X := a;
  WriteLn('B)');
  WriteLn(' X', ' ':10, 'Z');
  for i := 1 to K do
  begin
    Z := X / Sqrt(c * X);
    WriteLn(X:0:4, ' ':10, Z:0:4);
    X := X + h;
  end;
  WriteLn;
  X0 := 0.0;
  Xc := 6.28;
  h := 3.14 / 8;
  n := 2.0;
  K := Trunc((Xc - X0) / h) + 1;
  X := X0;
  WriteLn('C)');
  WriteLn(' X', ' ':10, 'Y');
  for i := 1 to K do
  begin
    Y := n * Sin(X) - Cos(n * X);
    WriteLn(X:0:4, ' ':10, Y:0:4);
    X := X + h;
  end;
end.
