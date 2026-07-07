program MeasurementError;
var
  measuredValue, absoluteError, relativeError: Real; 
begin
  measuredValue := 99.498;
  absoluteError := 0.5;   
  WriteLn('Абсолютная погрешность измерения: ', absoluteError:0:3, ' см');
  relativeError := absoluteError / measuredValue; 
  WriteLn('Относительная погрешность измерения: ', relativeError:0:6);
end.
