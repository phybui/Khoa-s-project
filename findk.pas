VAR
i,n,m,k:longint;
d:integer;
f1,f2:text;
Function gt(l:longint):longint;
var
j,p:longint;
Begin
p:=1;
For j:=2 to l do
p:=p*j;
gt:=p;
End;


BEGIN
assign(f1,'TIMK.INP');
assign(f2,'TIMK.OUT');
reset(f1);
rewrite(f2);
read(f1,n,m);

d:=0;
k:=gt(n);
while k mod m=0 do
begin
k:=k div m;
inc(d);

End;
write(f2,d);
close(f1);
close(f2);
END.
