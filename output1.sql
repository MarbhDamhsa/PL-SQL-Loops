
SET SERVEROUTPUT ON
DECLARE
v_cost NUMBER;
v_coh NUMBER;
out_ans NUMBER;
BEGIN
    v_cost :=35.50;
    dbms_output.put_line('The item costs '||v_cost);
    v_coh :=380.25;
    dbms_output.put_line('You have $'||v_coh||' in your wallet');
    out_ans :=TRUNC((v_coh / v_cost));
    dbms_output.put_line('You can purchase '||out_ans);
END;
/
SET SERVEROUTPUT OFF
