DECLARE 
 <Declaration section>
BEGIN 
<executables commands>
EXCEPTION
<exception handling>
END;





DECLARE

BEGIN
dbms_output.put_line('Welcome')

END;



--variable declaration, VARNAME DATATYPE
DECLARE
--variable section single comment

/*
	multiple line comments
	
*/

ordernum number:=100;
orderid number default 101; --default val declaration
customername varchar2(20) := 'Vishal'; --declare a string
customerPAN CONSTANT varchar2(10) := 'BXXFT0000Z'; --we cannot modify constant variable

BEGIN
ordernum := 10 --change a variable in begin block
dbms_output.line(ordernum)
END;


--scope of variables 

DECLARE 
	--Global variable, accessible throught the program
	num1 number := 10;
BEGIN
dbms_output.line(num1);
	DECLARE
	--local variable , limited to this block of code only
	num2 number:= 20;
	BEGIN
		dbms_output.line(num1);
		dbms_output.line(num2);
	END;
END;



--IF ELSE

DECLARE 
	total_amount number:= 100;
	discount number:= 10;
	
BEGIN 
	if total_amount > 200:
	then
		discount := total_amount * 0.2;
	elsif total_amount >= 100 and total_amount <= 200
	then
		discount := total_amount * 0.1;
	else 
		discount:= total_amount * .05;
	end if
	
	dbms_output.line(discount);

END;


--CASE statement


DECLARE 
	total_amount number:= 100;
	discount number:= 10;
	
BEGIN 
CASE
	WHEN total_amount > 200:
	THEN
		discount := total_amount * 0.2;
	WHEN total_amount >= 100 and total_amount <= 200
	then
		discount := total_amount * 0.1;
	else 
		discount:= total_amount * .05;
	end CASE
	
	dbms_output.line(discount);

END;



--while loop

DECLARE
	cntr number := 10;
BEGIN
	WHILE cntr < 20
		LOOP
			dbms_output.line('Value of cntr : ' || cntr);
			cntr := cntr + 1
		END LOOP
END


--FOR LOOP



DECLARE
	cntr number := 10;
BEGIN
	FOR cntr IN 10..20
		LOOP
			dbms_output.line('Value of cntr : ' || cntr);
		END LOOP
END
