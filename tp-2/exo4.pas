program p004;
var N, h, t, d: integer;
begin
    write('n: '); readln(N);
    while ((N > 999) or (N < 0)) do
    begin
        write('n: '); readln(N);
    end;
    h:= N div 100;
    t:= (N div 10) - (10 * h);
    d:= N - (h*100) - (t * 10);
    
    if h = 1 then write('one hundred')
    else if h=2 then write('two hundred')
    else if h=3 then write('three hundred')
    else if h=4 then write('four hundred')
    else if h=5 then write('five hundred')
    else if h=6 then write('six hundred')
    else if h=7 then write('seven hundred')
    else if h=8 then write('eight hundred')
    else if h=9 then write('nine hundred');

    write(' ');

    if t=1 then write('ten')
    else if t=2 then write('twenty')
    else if t=3 then write('thirty')
    else if t=4 then write('fourty')
    else if t=5 then write('fifty')
    else if t=6 then write('sixty')
    else if t=7 then write('seventy')
    else if t=8 then write('eighty')
    else if t=9 then write('ninety');

    write(' ');


    if d=1 then write('one')
    else if d=2 then write('two')
    else if d=3 then write('three')
    else if d=4 then write('four')
    else if d=5 then write('five')
    else if d=6 then write('six')
    else if d=7 then write('seven')
    else if d=8 then write('eight')
    else if d=9 then write('nine');
end.