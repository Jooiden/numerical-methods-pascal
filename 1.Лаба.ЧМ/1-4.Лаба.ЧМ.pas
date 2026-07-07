program ASD;

uses crt;
var x, y:single;
begin
  writeln ('введите x');
  read(x);
  y:=sin(x);
  writeln ('sinx =',y=40);
  repeat until keypressed
end.