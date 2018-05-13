var
	luoi: array[1..100,1..100] of Integer;
	kinhtuyen,vituyen: array[1..100] of Integer;
	n,i,j,diem,count,ngat:Integer;
	fi,fo:text;
begin
	assign(fi,'robot.inp'); reset(fi);
	assign(fo,'robot.out'); rewrite(fo);
	readln(fi,n);
	count:=0;
	for i := 1 to n do
	begin
		for j := 1 to n do
		begin
			read(fi,luoi[i,j]);
		end;
	end;

	diem:=luoi[1,1];

	for i := 1 to n do
	begin
		for j := 1 to n do
		begin
			if ngat <> 0 then
			begin
				ngat:=ngat-1;
				continue;
			end;
			if luoi[i+1,j] < luoi[i,j+1] then 
			begin
				diem:=diem+luoi[i,j+1];
				kinhtuyen[count]:=i; vituyen[count]:=j;
				count:=count+1;
			end
			else 
				begin
					diem:=diem+luoi[i+1,j];
					kinhtuyen[count]:=i; vituyen[count]:=j;
					count:=count+1;
					ngat:=n-1;
				end;
		end;
	end;
	writeln(fo,diem);
	for i := 0 to count-1 do writeln(fo,kinhtuyen[i],' ',vituyen[i]);
	close(fo);
end.
