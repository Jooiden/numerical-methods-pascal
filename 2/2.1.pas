program labadvaodin;
function lg(x: real): real;
begin
  lg := ln(x) / ln(10);
end;
var 
  a1, b1, c1, S1, S2, a2, b2, c2, d2, e2: real;
begin  
  a1 := 0.62;
  b1 := 16.9;  
  c1 := 41.3;
  
  a2 := 12.47;
  b2 := 12.5;
  c2 := 12.8;
  d2 := 0.97;
  e2 := 2.68;

  S1 := (a1 + sqrt(b1)) / lg(c1);
  writeln('Первое выражение: ', S1); 

  S2 := (a2 + sqrt(b2 * b2) + c2 * c2) / (sqr(sin(d2)) + sqr(cos(e2)));
  writeln('Второе выражение: ', S2);
end.
