program CalculateFunctionC;

var
  X0, Xk, h, X, Y: Real;
  n: Integer;
begin
  X0 := 0.0;   
  Xk := 10.0;
  h := 0.25;  
  n := 2;     
  X := X0;

  while X <= Xk do
  begin
    Y := n * Sin(X) - Cos(n * X);
    WriteLn('X:',X:0:3, '+Y:',Y:0:5);
    X := X + h; 
  end;
end.
