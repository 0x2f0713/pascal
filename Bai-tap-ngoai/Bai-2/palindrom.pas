var
	number: array[0..20] of Integer;
	fi,fo:text;
	i,j: Integer;
	chuoi:string;
(* Hàm check số có phải là số palindrom hay không *)
function checkPalindrom(number:Integer): Boolean;
var
	chuoi,chuoi_test: string;
	i:Integer;
begin
	str(number,chuoi);
	chuoi_test:='';
	for i:=Length(chuoi) downto 1 do
		chuoi_test:=chuoi_test+chuoi[i];
	if chuoi_test = chuoi then checkPalindrom:=true else checkPalindrom:=false;
end;
(* Chương trình chính *)
begin
	assign(fi,'bai2.inp'); reset(fi);
	assign(fo,'bai2.out'); rewrite(fo);
	i:=0;
	while not eof(fi) do
	begin
		read(fi,number[i]);
		i:=i+1;
	end;
	for j := 0 to i-1 do
	begin
		str(number[j],chuoi);
		if (Length(chuoi) < 2) or (Length(chuoi) > 4 ) then continue
		else if checkPalindrom(number[j]) then writeln(fo,number[j]);
	end;
	close(fo);
end.