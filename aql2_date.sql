select 
    t.TRANDATE,
    substr (t.TRANDATE,1,4) tran_year,
    substr (t.TRANDATE,5,2) tran_ymonth,
    substr (t.TRANDATE,7,2) tran_day,
    to_date(t.TRANDATE,'yyyymmdd','nls_calendar=persian')gregorian_date
from tb_transactions t