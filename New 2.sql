select 
    t.TRANDATE, 
    substr(trandate, 1, 4) tranyear,
    substr(trandate, 5) tranmonth,
    to_date(t.TRANDATE, 'yyyymmdd', 'nls_calendar=persian') gregorian_date,
    t.TRANTIME, 
    t.amount, 
    nvl(t.VOUCHERAMOUNT, 0) voucheramount, 
    t.AMOUNT + nvl(t.VOUCHERAMOUNT, 0) sum_amount 
from tb_transactions t 