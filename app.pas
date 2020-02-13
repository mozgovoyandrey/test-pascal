program CheckNumbers;
var x,count,max1,max2: Integer;
var expected, control: LongInt;

begin
  x:=1; count:=0; max1:=0; max2:=0;
  while x<>0 do begin
      readln(x);
      count:=count+1;
      if x>max1 then begin
        if max1>max2 then
          max2:=max1;
        max1:=x
        end
      else begin
        if x>max2 then
          max2:=x
      end;
  end;
  readln(control);
  expected := max1*max2;
  writeln('Получено ', count-1, ' чисел');
  writeln('Получено контрольное значение: ', control);
  writeln('Вычислено  контрольное значение: ', expected);
  if expected = control then
    writeln('Контроль пройден')
  else
    writeln('Контроль не пройден');
end.
