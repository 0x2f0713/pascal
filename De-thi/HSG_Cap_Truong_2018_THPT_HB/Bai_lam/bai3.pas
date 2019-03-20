
Var 
  i,j,UCLN_max,N,M,UCLN_temp: integer ;
  A,B: array[1..100] Of integer;
Function UCLN(a,b:integer): integer;
Begin
  While ((b <> 0) And (a <> 0)) 
    Do
    Begin
      If a > b Then
        a := a -b
      Else b := b-a;
    End;
  UCLN := a+b;
End;
Begin
  read(N);
  For i := 1 To N Do
    read(A[i]);
  read(M);
  For j := 1 To M Do
    read(B[j]);
  UCLN_max := UCLN(A[1],B[1]);
  For i := 1 To N Do
    For j := 2 To M Do
      Begin
        UCLN_temp := UCLN(A[i],B[j]);
        If UCLN_max < UCLN_temp Then UCLN_max := UCLN_temp;
      End;
  write(UCLN_max)
End.
