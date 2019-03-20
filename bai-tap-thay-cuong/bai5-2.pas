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
    assign(input,'mang1.txt');reset(input);
    assign(output,'tiant2.txt');rewrite(output);
    while not eof(input) do
        begin
            read(input,number);
            if  not isPrimeNumber(number) then writeln(output,number);
        end;
    close(output);
end.