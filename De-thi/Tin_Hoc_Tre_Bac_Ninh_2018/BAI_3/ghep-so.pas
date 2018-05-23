uses math;
var x,y:longint;
    s,st:string;
begin
        readln(x,y);
        str(x,s);
        str(y,st);
        while (length(s)>0) and (length(st)>0) do
         if s+st<st+s then
         begin
                write(s[1]);
                delete(s,1,1);
         end
         else
         begin
                write(st[1]);
                delete(st,1,1);
         end;
         writeln(s+st);
         str(x,s);
         str(y,st);
         while (length(s)>0) and (length(st)>0) do
          if s+st>st+s then
          begin
                write(s[1]);
                delete(s,1,1);
          end
          else
          begin
                write(st[1]);
                delete(st,1,1);
          end;
          write(s+st);
          readln;
end.
    