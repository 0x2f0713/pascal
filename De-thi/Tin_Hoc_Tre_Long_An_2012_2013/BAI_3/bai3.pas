var
	fi,fo: text;
	i,j,k:Integer;
	count:Boolean;
	mang:array[0..1000] of string;
begin
	assign(fi,'input.inp');
	reset(fi);
	i:=0;
	count:=false;
	while not eof(fi) do
	begin
		readln(fi,mang[i]);
		i:=i+1;
	end;
	for j := 0 to i-1 do
		begin
		for k := 0 to i-1 do
		begin
			if (mang[j] = mang[k]) and (j <> k) then 
			begin
				mang[k]:='0x2f0713';
				count:=true;
			end;
		end;
		if count then mang[j]:='0x2f0713';
		end;
	for j := 0 to i-1 do
	begin
		if mang[j] <> '0x2f0713' then writeln(mang[j]);
	end;
end.
