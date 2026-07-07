program CFa;

var
  a, b, h, X, Z: Real;
begin
  a := 21.356;  
  b := 10.0;    
  h := 0.25;    
  X := a;

  while X <= 30.0 do 
  begin
    Z := X * b / (X + b);
    WriteLn('X: ', X:0:3, ' Z: ', Z:0:5);
    X := X + h;
  end;
end.
