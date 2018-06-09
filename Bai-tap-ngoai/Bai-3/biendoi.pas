function filterZeroCharacter(chuoi:string):string;
begin
    while (pos('0',chuoi) <> 0 ) do
    begin
        delete(chuoi,pos('0',chuoi),1);
    end;
    filterZeroCharacter:=chuoi;
end;
function sortString(chuoi:string):string;
var
    i,j: integer;
    temp:char;
begin
    for i:=1 to length(chuoi) do
    for j:=i+1 to length(chuoi) do
        if chuoi[i]>chuoi[j] then
           begin
                temp:=chuoi[i];
                chuoi[i]:=chuoi[j];
                chuoi[j]:=temp;
           end;
    sortString:=chuoi;
end;
begin
    writeln(filterZeroCharacter(sortString('982918907878')))
end.