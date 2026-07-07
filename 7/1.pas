program sictema;
uses crt;
const n=3;
type T=single;
var a:array[1..n,1..n+1] of T; x:array[1..n] of T;
k,i,j:integer; r,q,det:T;
begin
  clrscr;
  for k:=1 to n do for j:=1 to n+1 do
  begin
    writeln('введите а[',k,',',j,']');
    read(a[k,j]);
  end;
  writeln('Расширенная матрица системы');
  for k:=1 to n do
  begin
      for j:=1 to n+1 do write(a[k,j]:12:4);
      writeln
  end;
  det:=1.0;
  for k:=1 to n do
    begin det:=det*a[k,k];
    for j:=k+1 to n+1 do
      a[k,j]:=a[k,j]/a[k,k];
    for i:=k+1 to n do
      for j:=k+1 to n+1 do
        begin r:=a[k,j]*a[i,k];
        a[i,j]:=a[i,j]-r
        end;
        end;
        writeln; writeln('Определитель системы = ',det);
        x[n]:=a[n,n+1];
        for k:=n-1 downto 1 do
          begin r:=0;
          for j:=n downto k+1 do
            begin q:=a[k,j]*x[j];
              end;
              writeln; writeln('Результат решения системы');
              for i:=1 to n do
                writeln('x[',i,']=',x[i]);
              repeat until keypressed
end; end.