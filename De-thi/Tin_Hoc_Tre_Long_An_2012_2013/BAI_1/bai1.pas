var
	n,i,S,a,b,count: Integer;

function createShortPrime(n:Integer): Integer;
var
	S,m,i,check: Integer;
	songuyento:Boolean;
begin
	m:=round(n/2);
	S:=0;
	check:=0;
	if n<2  then begin
		createShortPrime:=S;
		exit;
	end;
	songuyento:=true;
	for i:=2 to m do
		if n mod i = 0 then songuyento:=false;
	if songuyento then 
	begin
		createShortPrime:=S;
		exit;
	end;

	repeat
		for i := 2 to m do
			begin
			if n mod i = 0 then
				if check <> i then 
				begin
					n:= n div i;
					S:=S+i;
					check:=i;
					break;
				end
				else 
				begin
					n:= n div i;
					break;
				end;
			end;

	until n=1;
	createShortPrime:=S;
end;

begin
	write('Nhap n: '); readln(n);
	S:=createShortPrime(n);
	writeln('So nguyen to rut gon cua n: ',S);
	write('Nhap a:'); readln(a);
	write('Nhap b:'); readln(b);
	write('Cac so co cung so nguyen to rut gon voi n: ');
	count:=0;
	for i := a to b do
		if createShortPrime(i) = S then
		begin
			write(i,' ');
			count:=count+1;
		end;
	writeln();
	writeln('Co ',count,' so');
end.