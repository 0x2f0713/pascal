var
	mang: array[0..500] of Integer;
	ban,count,i,conlai,n:Integer;
	fi,fo:text;
begin
	assign(fi,'banlua.inp'); reset(fi);
	assign(fo,'banlua.out'); rewrite(fo);
	readln(fi,n);
	ban:=0;
	conlai:=0;
	count:=0;
	for i := 0 to n-1 do 
		begin
			read(fi,mang[i]);

			conlai:=conlai+mang[i];
		end;
	for i := n-1 downto 0 do
	begin
		ban:=ban+mang[i];
		conlai:=conlai-mang[i];
		if ban <= conlai then
			begin
				count:=count+1;
				continue;
			end
		else
			begin
				ban:=ban-mang[i];
				break;
			end;
	end;
	if count <> 0 then 
	begin
		writeln(fo,'YES');
		write(fo,count,' ',ban);
	end
	else write(fo,'NO');
	close(fo);
end.
