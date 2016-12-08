SET SERVEROUTPUT ON
DECLARE
v_x NUMBER;
out_ans NUMBER;

BEGIN
    v_x :=1;
    LOOP

    out_ans :=(v_x * 2);
    dbms_output.put_line(v_x||' + '||v_x||' = '||out_ans);
    v_x := v_x + 1;
        EXIT WHEN v_x > 4;
        END LOOP;
END;
/
SET SERVEROUTPUT OFF