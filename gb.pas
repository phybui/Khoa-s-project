USES crt;
VAR f1, f2: text;
    n, i, j, k, y, x, tong: integer;
    A: array[1..100] of integer;
FUNCTION kt(n: integer): boolean;
 var i, d: integer;
 begin
   d:=0;
   kt:=false;
   for i:=1 to n do
      if n mod i=0 then inc(d);
   if d=2 then kt:=true ;
 end;
BEGIN
  assign(f1,'GB.INP');
  assign(f2,'GB.OUT');
  reset(f1);
  rewrite(f2);
  readln(f1,n);
  for i:=1 to n do
     readln(f1,A[i]);

  for i:=1 to n do
     begin
          x:=A[i] div 2;
          y:=A[i] div 2;
          while kt(x)=false do
               x:=x-1;
          write(f2,x,' ');
          while kt(y)=false do
               y:=y+1;
          writeln(f2,y);
     end;
 {for i:=1 to n do
     for j:=2 to A[i] do
        for k:=j+1 to A[i] do
           begin
              tong:=0;
              if (kt(j)) and (kt(k)) then tong:=j+k;
              if tong=A[i] then writeln(f2,j,' ',k);

           end;}

  close(f1);
  close(f2);
END.

