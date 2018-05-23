const
      maxN = 10004;
var  prime: array[0..maxN] of boolean;
     n, i, j, s: longint;
begin
     readln({f,} n);
     fillchar(prime, sizeof(prime), true);
     prime[1]:= false;
     for i:= 2 to trunc(sqrt(n)) do
        if prime[i] then
           begin
              j:= i * i;
              while j <= n do
                 begin
                    prime[j]:= false;
                    j:= j + i;
                 end;
           end;
     for i:= n downto 1 do
        if prime[i] then
           begin
              prime[i]:= false;
              s:= i;
              for j:= i - 1 downto 2 do
                 if prime[j] then
                    begin
                       if s * j <= n then
                          begin
                             prime[j]:= false;
                             s:= s * j;
                          end;
                    end;
              inc(res);
           end;
     writeln(res);
end.
    