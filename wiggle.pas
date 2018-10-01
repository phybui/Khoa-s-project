uses crt;
var
f1,f2:text;
i,n,k,d:integer;
s:string;
A:array[1..100] of integer;
Begin
assign(f1,'WIGGLE.IN');
assign(f2,'WIGGLE.OUT');
reset(f1);
rewrite(f2);
read(f1,s);
for i:=1 to length(s) do
val(s[i],A[i]);
d:=1;
for i:=1 to length(s) do
if (A[i]<A[i+1]) and (A[i+1]>A[i+2]) or (A[i]>A[i+1]) and (A[i+1]<A[i+2])
then inc(d);
write(f2,d);


close(f1);
close(f2);
end.
