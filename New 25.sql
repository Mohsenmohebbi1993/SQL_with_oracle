select t.trandate, t.terminalno, m.terminal_no, m.provincename, t.amount
from tb_transactions t, tb_merchants m
where trandate = '14011103' and amount between 50000 and 250000 
and t.terminalno = m.terminal_no
