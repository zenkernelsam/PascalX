PROGRAM DOW2017;
VAR
DOW : ARRAY [0..6] OF STRING;
CMONTH : ARRAY [1..12] OF STRING;
MONTHSIZE : ARRAY [1..12] OF INTEGER;
YEARSIZE : ARRAY [17..27] OF INTEGER;
YEAR, DAY, MONTH, J : INTEGER;
FLAG : BOOLEAN;
BEGIN
DOW[0] := 'Sunday';
DOW[1] := 'Monday';
DOW[2] := 'Tuesday';
DOW[3] := 'Wednesday';
DOW[4] := 'Thursday';
DOW[5] := 'Friday';
DOW[6] := 'Saturday';
CMONTH[1] := 'January';
CMONTH[2] := 'February';
CMONTH[3] := 'March';
CMONTH[4] := 'April';
CMONTH[5] := 'May';
CMONTH[6] := 'June';
CMONTH[7] := 'July';
CMONTH[8] := 'August';
CMONTH[9] := 'September';
CMONTH[10] := 'October';
CMONTH[11] := 'November';
CMONTH[12] := 'December';
   MONTHSIZE[1] := 31;
   MONTHSIZE[2] := 28;
   MONTHSIZE[3] := 31;
   MONTHSIZE[4] := 30;
   MONTHSIZE[5] := 31;
   MONTHSIZE[6] := 30;
   MONTHSIZE[7] := 31;
   MONTHSIZE[8] := 31;
   MONTHSIZE[9] := 30;
   MONTHSIZE[10] := 31;
   MONTHSIZE[11] := 30;
   MONTHSIZE[12] := 31;
YEARSIZE[17] := 0;
YEARSIZE[18] := 365;
YEARSIZE[19] := 730;
YEARSIZE[20] := 1096;
YEARSIZE[21] := 1461;
YEARSIZE[22] := 1826;
YEARSIZE[23] := 2191;
YEARSIZE[24] := 2557;
YEARSIZE[25] := 2922;
YEARSIZE[26] := 3288;
YEARSIZE[27] := 3653;
REPEAT
 FLAG := FALSE;
 WRITE ('Please input a year between 2017 & 2027 (17-27): ');
 READLN(YEAR);
 IF (YEAR < 27) AND (YEAR > 17) THEN
 FLAG := TRUE
 ELSE
 BEGIN
 WRITELN ('Unsupported Year!');
 WRITELN;
 END;
UNTIL (FLAG = TRUE);
REPEAT
 WRITE ('Please input a month between in 2017 & 2027 (1 - 12) : ');
 READLN(MONTH);
 IF (MONTH > 0) AND (MONTH < 13) THEN
 FLAG := TRUE
 ELSE
 BEGIN
 WRITELN ('Wrong input month!');
 WRITELN;
 END;
UNTIL (FLAG = TRUE);
REPEAT
 FLAG := FALSE;
 WRITE ('Please input a day in the above month (1 - ');
 WRITE (MONTHSIZE[MONTH],') : ');
 READLN(DAY);
 IF (DAY > 0) AND (DAY <= MONTHSIZE[MONTH]) THEN
 FLAG := TRUE
 ELSE
 BEGIN
 WRITELN ('Wrong input day!');
 WRITELN;
 END;
UNTIL (FLAG = TRUE);
 WRITELN;
WRITE (DAY, ' ', CMONTH[MONTH], YEAR, ' of 2017 to 2027 is ' );
FOR J := 1 TO (MONTH - 1) DO
DAY := DAY + MONTHSIZE[J] + YEARSIZE[YEAR];
DAY := (DAY - 1) MOD 7;
WRITELN (DOW[DAY], '.');
 WRITELN;
 WRITE ('Press <ENTER> key to exit.');
 READLN;
END.
