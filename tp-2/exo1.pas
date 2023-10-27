program divisor;
var n, i: integer;
begin
    write('n: '); read(n);
    for i:=1 to n do
    begin
        if (n mod i) = 0 then writeln(i)
    end;
end.