program p003;

var n, temp, m, d: integer;

begin
    write('n: '); readln(n);
    temp:=n-30;
    
    m:=1;
    while (temp > 0) do begin
        if (m=1) then temp:=temp-28
        else if (m mod 2) = 0 then temp:= temp-31
        else temp:=temp-30;
        m:=m+1
    end;
    
    case m of 
        1,3,5,7,8,10,12: d:=31+temp;
        2:d:=28+temp;
        else d:=30+temp;
    end;
    case (n mod 7) of
        0: write('wednesday');
        1: write('thursday');
        2: write('Friday');
        3: write('Saturday');
        4: write('Sunday');
        5: write('Monday');
        6: write('Tuesday');
    end;

    write(' ', d, ' ');
    case m of
        1: write('january');
        2: write('february');
        3: write('march');
        4: write('april');
        5: write('may');
        6: write('june');
        7: write('july');
        8: write('august');
        9: write('september');
        10: write('october');
        11: write('november');
        12: write('dicember');
    end;
end.