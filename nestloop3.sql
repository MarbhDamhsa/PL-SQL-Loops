SET SERVEROUTPUT ON
DECLARE
v_x NUMBER;
v_y NUMBER;
out_ans NUMBER;

BEGIN
    v_x :=1;
    FOR i in 1..4 LOOP
    v_y :=1;
    	FOR j in 1..4 LOOP
    		out_ans :=(v_x + v_y);
    		dbms_output.put_line(v_x||' + '||v_y||' = '||out_ans);
    		v_y := v_y + 1;   		
    	END LOOP;
    v_x := v_x + 1;
    END LOOP;
END;
/
SET SERVEROUTPUT OFF