program PrecisionOfFunctions;

function TaylorCos(x: Real): Real;
var
  term, sum: Real;
  i: Integer;
begin
  term := 1;
  sum := term;
  i := 1;
  
  repeat
    term := -term * x * x / ((2 * i - 1) * (2 * i));
    sum := sum + term;
    i := i + 1;
  until Abs(term) < 1e-15;
  
  TaylorCos := sum;
end;

function NumericalLn(x: Real): Real;
var
  sum, term, step: Real;
  i, n: Integer;
begin
  sum := 0;
  n := 100000;
  step := (x - 1) / n;
  
  for i := 1 to n do
  begin
    term := 1 / (1 + (i - 0.5) * step);
    sum := sum + term;
  end;
  
  NumericalLn := sum * step;
end;

var
  x1, x8: Real;
  cos_x1, cos_x8, ln_x1, ln_x8: Real;
  exact_cos_x1, exact_cos_x8, exact_ln_x1, exact_ln_x8: Real; 

begin
  x1 := 1;
  x8 := 8;
  
  cos_x1 := TaylorCos(x1);
  cos_x8 := TaylorCos(x8);
  ln_x1 := NumericalLn(x1);
  ln_x8 := NumericalLn(x8);
 
  exact_cos_x1 := 0.5403023058681398; // cos(1)
  exact_cos_x8 := -0.14550003380861354; // cos(8)
  exact_ln_x1 := 0; // ln(1)
  exact_ln_x8 := 2.0794415416798357; // ln(8)
  
  writeln('Функция  x  Вычисленное значение        Точное значение');
  writeln('cos(x)   1  ', cos_x1:20:16, '  ', exact_cos_x1:20:16);
  writeln('cos(x)   8  ', cos_x8:20:16, '  ', exact_cos_x8:20:16);
  writeln('ln(x)    1  ', ln_x1:20:16, '  ', exact_ln_x1:20:16);
  writeln('ln(x)    8  ', ln_x8:20:16, '  ', exact_ln_x8:20:16);
end.
