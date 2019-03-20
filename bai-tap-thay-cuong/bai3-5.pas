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
    number,N,i,j,amountPM,amountSuperPM:integer;
begin
    amountPM:=0;
    amountSuperPM:=0;
    assign(input,'mang1.txt');reset(input);
    assign(output,'tiant2.txt');rewrite(output);
    readln(input,N);
    for i:=0 to N do
    // Excute
        begin
            read(input,number);
            if isPrimeNumber(number) then 
            begin
                for j:=1 to length(chr(number)) do
                begin
                    number:= number div 10;
                    if not isPrimeNumber()
                end;
                amountPM:=amountPM + 1;
            end;
        end;
        
        

end.