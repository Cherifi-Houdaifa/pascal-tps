program fib;
var num1, num2, temp: integer;
    n, i: integer;

begin
    { 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144 }
    
    num1:= 0;
    num2:= 1;
    write('n: '); read(n);
    for i:= 1 to n - 1 do
    begin
        temp:= num2;
        num2:= num1+num2;
        num1:= temp;
    end;
    writeln(num2);

end.