
Var 
  Mang: array[0..1000] Of integer;
  N,max,min,i,Max_integrated,integrated,ai: integer;
Begin
  read(N);
  For i := 0 To N-1 Do
    read(Mang[i]);
  max := Mang[0];
  min := Mang[0];
  For i := 1 To N-1 Do
    Begin
      If max < Mang[i] Then max := Mang[i];
      If min > Mang[i] Then min := Mang[i];
    End;
  Max_integrated := (Max-Mang[0])*(Mang[0]-Min);
  ai := Mang[i];
  For i := 1 To N-1 Do
    Begin
      integrated := (Max-Mang[i])*(Mang[i]-Min);
      If (integrated > Max_integrated) Then
        Begin
          Max_integrated := integrated;
          ai := Mang[i];
        End;
    End;
  writeln(max);
  writeln(min);
  writeln(ai);
End.
