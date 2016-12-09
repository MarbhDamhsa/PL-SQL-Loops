SET SERVEROUTPUT ON
DECLARE
v_numb1 NUMBER;
v_numb2 NUMBER;
BEGIN

	v_numb1 :=2;
	v_numb2 :=6;

	WHILE (v_numb1 < (v_numb2 * 3)) LOOP
	IF v_numb1 < v_numb2 THEN

		IF ((MOD(v_numb2, v_numb1) = 0) AND ((v_numb1 * 2) = v_numb2)) THEN
			dbms_output.put_line(v_numb1||' is half of '||v_numb2);
		ELSIF (MOD(v_numb2, v_numb1) = 0)THEN
			dbms_output.put_line(v_numb1||' is a multiple of '||v_numb2);
		ELSE
			dbms_output.put_line(v_numb1||' is less than '||v_numb2);
		END IF;	
	ELSIF v_numb1 = v_numb2 THEN
		dbms_output.put_line(v_numb1||' is equal to '||v_numb2);	
	ELSIF v_numb1 > v_numb2 THEN
		IF ((MOD(v_numb2, v_numb1) = 0) AND ((v_numb2 * 2) = v_numb1)) THEN
			dbms_output.put_line(v_numb2||' is twice as much as '||v_numb1);
		ELSIF (MOD(v_numb1, v_numb2) = 0) THEN
			dbms_output.put_line(v_numb1||' is a multiple of '||v_numb2);
		ELSE	
			dbms_output.put_line(v_numb1||' is greater than '||v_numb2);
		END IF;
	ELSE
		dbms_output.put_line('ERROR no number given!');
	END IF;	
	v_numb1 :=v_numb1 + 1;
	END LOOP;
END;
/
SET SERVEROUTPUT OFF