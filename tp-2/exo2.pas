program p002;
var n, i, count: integer;
    c, lastC: char;
begin
    count:=0;
    write('n: '); readln(n);
    for i:=1 to n do
    begin
        write('c: '); readln(c);
        if i>1 then begin
            if (c='B') and (lastC='A') then count:= count+1
        end;
        lastC:=c;
    end;
    writeln('The count is: ', count);
end.