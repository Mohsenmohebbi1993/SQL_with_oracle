select * from tb_transactions t
where t.TERMINALNO = '81490965' 
and t.TRANDATE between 
to_char(sysdate - 30, 'yyyymmdd', 'nls_calendar=persian') 
and to_char(sysdate - 10, 'yyyymmdd', 'nls_calendar=persian') 
and t.VOUCHERAMOUNT is null