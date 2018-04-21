(* Developed by 0x2f0713 *)
var
	fi,fo:text;
	dodai,k: Integer;
	str, temp: string;
	i,j: Integer;
	mang: array[0..500] of string;

(* So sánh các chuỗi *)
function compare(a,b:String): Boolean;
var
	i,max,c,d: Integer;
begin
	c := Length(a);
	d := Length(b);
	if c < d then max:= Length(a) else max:=Length(b);
	for i := 0 to max do
	begin
		if (ord(a[i]) = ord(b[i])) then continue;
		if (ord(a[i]) < ord(b[i])) then 
			begin
				compare:= true;
				exit;
			end;
		if (ord(a[i]) > ord(b[i])) then
		begin
			compare:= false;
			exit;
		end;
	end;
end;

(* Tạo các chuỗi mới *)
function createString(str:string): string;
var
	tam: char;
	i: Integer;
begin
	for i := 1 to length(str)-1 do
	begin
		tam := str[length(str)];
		str[length(str)] := str[i];
		str[i] := tam;
	end;
	createString := str;
end;

(* Chương trình chính *)
begin
	assign(fi,'abc.inp');
	assign(fo,'abc.out');
	reset(fi);
	rewrite(fo);
	readln(fi,dodai,k);
	readln(fi,str);
	mang[0] := str;
	for i := 1 to length(str)-1 do
	begin
		mang[i] := createString(mang[i-1]);
	end;
	for i := 0 to length(str)-1 do
	for j:=i+1 to length(str) do
		If (not compare(mang[i],mang[j])) Then
			Begin
				Temp:=mang[i]; mang[i]:=mang[j]; mang[j]:=temp;
			End;
	writeln(fo,mang[k]);
	close(fo);
end.