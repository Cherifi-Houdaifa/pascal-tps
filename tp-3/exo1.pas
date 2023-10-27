program p001;

var n, i: integer;

begin
    write('n: '); readln(n);
    for i:=2 to n-1 do begin
        if (n mod i) = 0 then writeln(i);
    end;
end.