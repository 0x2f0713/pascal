var
	a,b,c: Integer;
begin
	for a := 1 to 9 do
		for b := 0 to 9 do
			for c := 0 to 9 do
				begin
					if ((b-a) = (c-b)) and (c mod 2 = 1) and ((a <>b) and (b<>c)) then writeln(a,b,c);
				end;
end.
