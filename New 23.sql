select t.trandate, t.terminalno, m.terminal_no, m.provincename, m.projectcode, t.amount
from tb_transactions t
right join tb_merchants m on t.terminalno = m.terminal_no
where trandate = '14011103' and amount between 50000 and 250000
--where m.PROJECTCODE = '1010'