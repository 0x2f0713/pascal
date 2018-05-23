//uses crt;
var a               : array[1..101] of longint;
    n,i,c,tempc,j,m : longint;
    ok              : boolean;
procedure qs(l,h : longint);
Var x,temp : longint;
Begin
i:=l;
j:=h;
x:=a[(l+h) div 2];
repeat
      While a[i]<x do inc(i);
      While a[j]>x do dec(j);
      if i<=j then
         Begin
         temp:=a[i];
         a[i]:=a[j];
         a[j]:=temp;
         inc(i);
         dec(j);
         end;
until i>j;
if l<j then qs(l,j);
if i<h then qs(i,h);
end;
//======
Begin
//clrscr;
Readln(n);
for i:=1 to n do read(a[i]);
qs(1,n);
for i:=1 to n div 2 do
    Begin
    tempc:=a[i];
    a[i]:=a[n-i+1];
    a[n-i+1]:=tempc;
    end;
m:=a[1]+1;
ok:=true;
for i:=1 to m do
    Begin
    for j:=1 to i do
        if a[j]=0 then ok:=false;
    if ok=false then break
    else
    for j:=1 to i do
        Begin
        dec(a[j]);
        end;
    end;
Writeln(i);
Readln
end.
    