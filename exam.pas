var
    res,n,i,num:integer;
begin
    res:=0;
    readln(n);
    for i:=1 to n do 
        begin
            read(num);
            if num = 1 then
                res:=res+1;
            else
                res:=res-1;
        end;
    write(abs(num))
end.