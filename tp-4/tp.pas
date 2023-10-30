program dateCalc;
var day, month, year: int64;
    nday, nmonth, nyear: int64;
    dday, dmonth, dyear, rday, rmonth: int64;
function dateToDay(day: int64; month: int64; year: int64): int64;
	{supposing that 1/1/0001 is the first day}
	var r, i, m: int64;
	begin
		m:=month;
		r:=0;
		For i:=1 to year - 1 do begin
			IF (((i mod 4)=0) and ((i mod 100) <> 0)) or (((i mod 400)=0) and ((i mod 100) = 0)) THEN r:=r+366
			ELSE r:=r+365;
		end;
		while(m>1) do begin
			CASE m of
			1,3,5,7,8,10,12: r:=r+31;
			4,6,9,11: r:=r+30;
			2: IF (((year mod 4)=0) and ((year mod 100) <> 0)) or (((year mod 400)=0) and ((year mod 100) = 0)) THEN r:=r+29
				ELSE r:=r+28;
			end;
			m:=m-1;
		end;
		r:=r+day;
		dateToDay:=r;
	end;
function dateToMonth(month:int64; year:int64): int64;
	var r: int64;
	begin
		r:=month-1;
		r:=r+((year-1)*12);
		dateToMonth:=r;
	end;
begin
	{supposing that the second date will be always the bigger}
	write('d: ');readln(day);write('m: ');read(month);write('y: ');readln(year);
	write('nd: ');readln(nday);write('nm: ');read(nmonth);write('ny: ');readln(nyear);
	dday:=(dateToDay(nday, nmonth, nyear)-dateToDay(day, month, year));
	dmonth:=(dateToMonth(nmonth, nyear)-dateToMonth(month, year));
	dyear:=nyear-year;
	
	rday:=nday - day;
	IF (nday - day) < 0 THEN BEGIN
		CASE month of
			1,3,5,7,8,10,12: rday:=rday+31;
			4,6,9,11: rday:=rday+30;
			2: IF (((year mod 4)=0) and ((year mod 100) <> 0)) or (((year mod 400)=0) and ((year mod 100) = 0)) THEN rday:=rday+29
				ELSE rday:=rday+28;
		end;
	end;
	
	rmonth:=dmonth mod 12;
	writeln('difference in days: ', dday);
	writeln('difference in months and days: ',dmonth, ' ',rday); 
	writeln('difference in years and months and days: ', dyear, ' ',rmonth, ' ',rday);
end.
