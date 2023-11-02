program exo2;
procedure printMonth(days: integer; var dow: integer);
var i, tempDays, count: integer;
begin
    count:=1;
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
end;

function isLeap(year: integer):boolean;
begin
    if (((year mod 4) = 0) and ((year mod 100) <> 0)) or (((year mod 400) = 0) and ((year mod 100) = 0)) then isLeap:=true
    else isLeap:=false;
end;

procedure printMonthName(month: integer);

begin
    case month of
    1: writeln('                       ', 'January');
    2: writeln('                       ', 'February');
    3: writeln('                       ', 'March');
    4: writeln('                       ', 'April');
    5: writeln('                       ', 'May');
    6: writeln('                       ', 'June');
    7: writeln('                       ', 'July');
    8: writeln('                       ', 'August');
    9: writeln('                       ', 'September');
    10: writeln('                       ', 'October');
    11: writeln('                       ', 'November');
    12: writeln('                       ', 'December');
    end;
end;

procedure printFullMonth(var year: integer; var month: integer; var dow: integer);
begin
    // print the first month
    printMonthName(month);
    case month of
        1,3,5,7,8,10,12:begin
            printMonth(31, dow);
        end;
        4,6,9,11: begin
            printMonth(30, dow);
        end;
        2: begin
            if isLeap(year) then printMonth(29, dow) else printMonth(28, dow);
        end;
    end;
    writeln();
    month:=month+1;
    if month=13 then begin
        month:=1;
        year:=year+1;
    end;
end;

var year, month, dow: integer;
begin
    write('year: ');readln(year);
    write('month: ');readln(month);
    write('day of week(0 for sunday...): ');readln(dow);

    // if you want to print the whole next year then just call this function 12 times
    printFullMonth(year, month, dow);
    printFullMonth(year, month, dow);
    printFullMonth(year, month, dow);
end.