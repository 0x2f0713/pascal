function isPrimeNumber(number:integer):Boolean;
var
    i: integer;
    SNT:Boolean;
begin
    SNT:=true
    for i:=2 to trunc(sqrt(number)) do
        if (number mod i = 0) then 
        begin
            SNT:=false;
            break;
        end;
    isPrimeNumber:=SNT;
end;
var
    number,i: integer;
begin
    readln(number);
    for i:=number downto 2 do
        if isPrimeNumber(i) then 
            begin
                write(i);
                exit;
            end;
end.