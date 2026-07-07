var a: array [1..6,1..6] of real;
b, x, otv: array [1..6] of real;
i, j, n: byte;
eps: real;
pr: boolean;
begin
  writeln ('Размер матрицы n= ');
  readln (n);
  for i:=1 to n do
  for j:=1 to n do
  begin
    write ('a[',i,',',j,']=');
    readln (a[i,j]);
  end;
  for i:=1 to n do
    if a[i,i]=0 then
    begin
      writeln ('Ошибка ввода');
      exit
    end;
    for i:=1 to n do
    begin
      write ('b[',i,']=');
      readln (b[i]);
    end;
    for i:=1 to n do
    begin
      for j:=1 to n do
      begin
        if i=j then
          continue;
          a[i,j]:=-a[i,j]/a[i,i];
      end;
      b[i]:=b[i]/a[i,i];
      a[i,i]:=0;
    end;
    for i:=1 to n do
    begin
      for j:=1 to n do
        write (a[i,j]:4:2,' ');
        writeln (b[i]:4:2);   
    end;
    for i:=1 to n do
      x[i]:=0;
      write ('eps= ');
      readln (eps);
      repeat
        for i:=1 to n do
        begin
          for j:=1 to n do
            otv[i]:=otv[i]+a[i,j]*x[j];
            otv[i]:=otv[i]+b[i];
        end;
        for i:=1 to n do
          if abs (otv[i]-x[i])>eps then
            pr:=true;
            for i:=1 to n do
            begin
              x[i]:=otv[i];
              otv[i]:=0;
            end;
      until pr;
      for i:=1 to n do
        writeln (x[i]:4:2);
end.