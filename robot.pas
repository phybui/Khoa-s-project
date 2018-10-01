var f1,f2:text;
    i,j,n,m:integer;
    vt,s,t:real;
    B,C:array[1..100] of integer;
    A:array[1..100] of char;
Begin
assign(f1,'ROBOT.INP');
assign(f2,'ROBOT.OUT');
reset(f1);
rewrite(f2);
readln(f1,n);
for i:=1 to n do
  readln(f1,A[i],B[i],C[i]);
vt:=0;
for i:=1 to n do
   s:=s+B[i];
for i:=1 to n do
   t:=t+C[i];
   vt:=s/t;
write(f2,vt:0:2);
close(f1);
close(f2);
end.
