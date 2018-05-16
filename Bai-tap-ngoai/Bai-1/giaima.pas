var
    xau: string;
    i,count:integer;
    fi,fo:text;
(* Hàm giải mã *)
function decode(xau:string): string;
var
    xau_moi,check: string;
    i,count:integer;
begin
    count:=0;
    xau_moi:='';
    for i:=length(xau) downto 1 do
    begin
            if count <> 0 then
    begin
        count:=count-1;
        continue;
    end;
        case xau[i] of
            'a': begin
                xau_moi:=xau_moi+'1';
                continue;
            end;
            'b': begin
                xau_moi:=xau_moi+'2';
            end;
            'c': begin
                if xau[i-1] = 'c' then begin
                    xau_moi:=xau_moi+'3';
                    count:=1;
                end
                else
                begin
                    check:= xau[i-2] + xau[i-1] + xau[i];
                    case check of
                        'cbc':begin
                            xau_moi:=xau_moi+'5';
                            count:=2;
                        end;
                        'cac':begin
                            xau_moi:=xau_moi+'9';
                            count:=2;
                        end;
                        'bbc': begin
                            xau_moi:=xau_moi+'4';
                            count:=2;
                        end;
                        'bac': begin
                            xau_moi:=xau_moi+'7';
                            count:=2;
                        end;
                        'abc':begin
                            xau_moi:=xau_moi + '6';
                            count:=2;
                        end;
                        'aac':begin
                            xau_moi:=xau_moi + '8';
                            count:=2;
                        end; 
                    end;

                end;
            end;           
        end;
    end;
        check:='';
        for i := length(xau_moi) downto 1 do
        begin
            check:=check+xau_moi[i];
        end;
        decode:=check;
end;
(* Hàm mã hóa để mình test thử chương trình *)
function encode(so:Integer): string;
var
    chuoi,ketqua: string;
    i:Integer;
begin
    str(so,chuoi);
    ketqua:='';
    for i:=0 to length(chuoi) do
    begin
        case chuoi[i] of
            '0': ketqua:=ketqua+'';
            '1': ketqua:=ketqua+'a';
            '2': ketqua:=ketqua+'b';
            '3': ketqua:=ketqua+'cc';
            '4': ketqua:=ketqua+'bbc';
            '5': ketqua:=ketqua+'cbc';
            '6': ketqua:=ketqua+'abc';
            '7': ketqua:=ketqua+'bac';
            '8': ketqua:=ketqua+'aac';
            '9': ketqua:=ketqua+'cac';
        end;
    end;
    encode:=ketqua;
end;
(* Chương trình chính *)
begin
	assign(fi,'decrypt.inp');
	assign(fo,'decrypt.out');
	reset(fi); rewrite(fo);
	readln(fi,xau);

    (* Phần chương trình chạy thử *)
    // for i:=1 to 100 do
    // begin
    //     str(i,xau);
    //     if decode(encode(i)) = xau then writeln('TRUE')
    //     else begin
    //         writeln(i,' ',encode(i),' ','FALSE');
    //     end;
    // end;

    writeln(fo,decode(xau));
    close(fo);
end.