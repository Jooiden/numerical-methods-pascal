program FindRoots;
var  
  x, step: real;
  f_x: real;

function f(x: real): real; begin
  f := x * sin(x) - 1;
end;

begin
  step := 0.1;  
  x := -15;
  writeln('x                    y');
  while x <= 15 do
  begin    
    
    f_x := f(x);
    
    if Abs(f_x) < 1e-6 then
      WriteLn('Корень найден в точке: (x = ', x:0:4, ', y = ', f_x:0:4, ')')    
    else if f(x) * f(x + step) < 0 then
    begin      
      // Метод бисекции для уточнения корня
      var a := x;      
      var b := x + step;
      var mid: real;      
      
      while Abs(b - a) > 0.0001 do
      begin
        mid := (a + b) / 2;        
        if f(a) * f(mid) < 0 then
          b := mid        
        else
          a := mid;      
      end;
      
      WriteLn((a + b) / 2:0:4 ,'            ',  f((a + b) / 2):0:4);
    end;    
    
    x := x + step;  
  end;
end.
