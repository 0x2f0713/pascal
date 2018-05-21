
Program NKPALIN;

Const 
  input  = '';
  output = '';

Var 
  s: array[1..2000] Of char;
  F: array[0..2000,0..2000] Of integer;
  fo: text;
  n: integer;
Procedure init;

Var 
  fi: text;
Begin
  Assign(fi, input);
  Reset(fi);
  n := 0;
  While Not eoln(fi) Do
    Begin
      inc(n);
      read(fi, s[n]);
    End;
End;

Function max(p,q: integer): integer;
Begin
  If p < q Then max := q
  Else max := p;
End;

Procedure optimize;

Var 
  i,j: integer;
Begin
  Fillchar(F, sizeof(F), 0);
  For i:= 1 To n Do
    F[i,i] := 1;

  For i:= n Downto 1 Do
    For j:= i + 1 To n Do
      If s[i] = s[j] Then F[i,j] := F[i + 1,j - 1] + 2
      Else F[i,j] := max(F[i + 1,j], F[i,j - 1]);
End;

Procedure trace(x,y: integer);
Begin
  If x = y Then write(fo, s[x])
  Else If x < y Then
         Begin
           If s[x] = s[y] Then
             Begin
               write(fo, s[x]);
               trace(x + 1,y - 1);
               write(fo, s[x]);
             End
           Else
             If F[x + 1,y] > F[x,y - 1] Then trace(x + 1,y)
           Else trace(x,y - 1);
         End;
End;

Begin
  init;
  optimize;
  Assign(fo, output);
  Rewrite(fo);
  trace(1,n);
  Close(fo);
End.
