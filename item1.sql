SET SERVEROUTPUT ON
SET VERIFY OFF
ACCEPT input_cost PROMPT 'How much does it cost?: '
ACCEPT input_coh PROMPT 'How much money do you have?: '
DECLARE
out_ans NUMBER;
BEGIN
    dbms_output.put_line('The item costs '||&input_cost);
    dbms_output.put_line('You have $'||&input_coh||' in your wallet');
    out_ans :=TRUNC((&input_coh / &input_cost));
    dbms_output.put_line('You can purchase '||out_ans);
END;
/
SET VERIFY ON
SET SERVEROUTPUT OFF
