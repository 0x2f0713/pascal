var
	S,m,i,check,createShortPrime,n: Integer;
	songuyento:Boolean;
begin
	n:=6;
	m:=round(n/2);
	repeat
		for i := 2 to m do
			begin
			if n mod i = 0 then
				begin
					n:= n div i;
					S:=S+i;
					break;
				end;
			end;
		writeln(i,' ',m);
	until n=1;
end.