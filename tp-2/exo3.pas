program p003;
var n, i, count: integer;
    c, lastC, secondLastC: char;
begin
    count:=0;
    write('n: '); readln(n);
    for i:=1 to n do
    begin
        write('c: '); readln(c);
        if i>2 then begin
            if (secondLastC='A') and (lastC='B') and (c='C') then count:= count+1
        end;
        secondLastC:= lastC;
        lastC:=c;
    end;
    writeln('The count is: ', count);
end.