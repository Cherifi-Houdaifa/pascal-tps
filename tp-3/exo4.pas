program p003;

var i, h, t, o: integer;

begin
    for i:= 2 to 999 do begin
        h:= i div 100;
        t:= (i - h * 100) div 10;
        o:= (i-h*100 - t*10);
        
        if (h + t + o) < 10 then writeln(i); 
    end;
end.