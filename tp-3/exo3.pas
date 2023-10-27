program p003;

var n, i: integer;

begin
    write('n: '); readln(n);
    for i:=0 to n do begin
        if (i * i) <= n then writeln(i);
    end;
end.