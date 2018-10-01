begin
assign(f1,'Max.inp');
assign(f2,'Max.out');
reset(f1);
rewrite(f2);
readln(f1,n);
for i:=1 to n do
readln(f1,A[i]);
for i:=1 to n-1 do
for j:=i+1 to n do
if A[i]<A[j] then begin
tam:=A[i];
A[i]:=A[j];
A[j]:=tam;
end;
d:=1;max:=0;
for i:=2 to n do
if A[i]=A[i-1] then inc(d) else begin if  d>max then max:=d; d:=1; end;
if d>max then max:=d;
d:=1;
j:=1; thu:=1;
for i:=1 to n do
if A[i]=A[i+1] then inc(d) else begin if d=max then begin B[j]:=A[i];
inc(j); inc(thu);  end;
 d:=1 ;
 end;
writeln(f2,B[thu-1],' ',max);
close(f1);
close(f2);
end.
