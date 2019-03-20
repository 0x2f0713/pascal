
Var 
  S: string;
  i,Sc,Sl,temp,code: integer;
Begin
  write('Nhap chuoi S: ');
  read(S);
  Sc := 0;
  Sl := 0;
  For i := 0 To length(S) Do
    Begin
      val(S[i],temp,code);
      If ((code = 0) And (temp <> 0)) Then
        If (temp Mod 2 = 0) Then
          Sc := Sc+1
      Else Sl := Sl+1;
    End;
  write(abs(Sc-Sl));
End.
