SET SERVEROUTPUT ON
DECLARE
v_x NUMBER;
v_y NUMBER;
out_ans NUMBER;

BEGIN
    v_x :=1;
    LOOP
    v_y :=1;
    	LOOP
    		out_ans :=(v_x + v_y);
    		dbms_output.put_line(v_x||' + '||v_y||' = '||out_ans);
    		v_y := v_y + 1;
    		EXIT WHEN v_y > 4;
    	END LOOP;
    v_x := v_x + 1;
    EXIT WHEN v_x > 4;
    END LOOP;
END;
/
SET SERVEROUTPUT OFF