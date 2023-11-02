program exo1;
var i, days, dow, tempDays, count: integer;

begin
    count:=1;
    write('days: '); readln(days);
    write('day of week(0 for sunday...): '); readln(dow);

    tempDays:=7-dow;
    
    writeln('D  L  M  M  J  V  S');
    for i := 1 to (dow * 3) do write(' ');
    while(tempDays > 0) do begin
        write(count, '  ');
        count:=count+1;
        tempDays:=tempDays-1;
    end;
    writeln();
    
    days:=days-(7-dow);
    dow:=0;
    while (days > 0) do begin
        if (count+1) >10 then write(count, ' ') 
        else write(count, '  ');
        
        if (((dow mod 6) = 0) and (dow <> 0)) then begin
            writeln();
            dow:=0
        end else begin
            dow:=dow+1;
        end;   

        count:=count+1;
        days:=days-1;
    end;
    writeln();
end.