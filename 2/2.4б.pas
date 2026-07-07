program CFb;

var
  a, b, h, X, Z, c: Real;
begin
  a := 21.356;
  b := 30.0;   
  h := 0.25; 
  c := 2.0;    
  X := a;

  while X <= b do
  begin
    Z := c * X * X;
    WriteLn('X: ', X:0:3, ' Z: ', Z:0:5);
    X := X + h;
  end;
end.
