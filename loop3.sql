SET SERVEROUTPUT ON
DECLARE
v_x NUMBER;
out_ans NUMBER;

BEGIN
    v_x :=1;
    WHILE v_x < 5 LOOP

    out_ans :=(v_x * 2);
    dbms_output.put_line(v_x||' + '||v_x||' = '||out_ans);
    v_x := v_x + 1;
        END LOOP;
END;
/
SET SERVEROUTPUT OFF