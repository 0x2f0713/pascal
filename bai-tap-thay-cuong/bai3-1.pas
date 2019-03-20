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
    input,output: text;
    number:integer;
begin
    assign(input,'dayso.out');reset(input);
    assign(output,'nguyento.int');rewrite(output);
    while not eof(input) do
        begin
            read(input,number);
            if isPrimeNumber(number) then writeln(number);
        end;
    close(output);
end.