const
	max = 100;
var
	F: array[0..max, 0..max] of Longint;
	n,m,v: Integer;
begin
	write('n=');
	readln(n);
	Fillchar(F[0], sizeof(F[0]),0);
	F[0,0] := 1;
	for m := 1 to n do
	begin
		for v := 0 to n do
		begin
			if v<m then
			begin
				F[m,v] := F[m-1,v]
			end
			else F[m,v] := F[m-1,v] + F[m,v-m];
		end;
	end;
	writeln(F[n,n]);
end.