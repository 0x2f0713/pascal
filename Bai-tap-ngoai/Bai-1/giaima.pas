var
    xau,xau_moi,check: string;
    i,count:integer;
    fi,fo:text;
begin
	assign(fi,'decrypt.inp');
	assign(fo,'decrypt.out');
	reset(fi); rewrite(fo);
	readln(fi,xau);
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
                check:= xau[i-2] + xau[i-1] + xau[i];
                case check of
                    'abc':begin
                    	xau_moi:=xau_moi + '6';
                    	count:=2;
                    end;
                    'aac':begin
                    	xau_moi:=xau_moi + '8';
                    	count:=2;
                    end; 
                    else begin
                    	xau_moi:= xau_moi+'1';
                    end;
                end;
                    
            end;
            'b': begin
                check:= xau[i-2] + xau[i-1] + xau[i];
                case check of
                    'bbc': begin
                    	xau_moi:=xau_moi+'4';
                    	count:=2;
                    end;
                    'bac': begin
                    	xau_moi:=xau_moi+'7';
                    	count:=2;
                    end;
                    else begin
                    	xau_moi:=xau_moi+'2';
                    end;
                end;
            end;
            'c': begin
                if xau[i+1] = 'c' then begin
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
        writeln(fo,check);
        close(fo);
end.