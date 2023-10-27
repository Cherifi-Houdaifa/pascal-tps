program p002;

var n, i, sum: integer;

begin
    write('n: '); readln(n);
    sum:=0;
    for i:=2 to n-1 do begin
        if (n mod i) = 0 then sum:=sum+i;
    end;
    writeln(sum);
end.