select t.trandate, t.terminalno, m.provincename, t.amount
from tb_transactions t
inner join tb_merchants m on t.terminalno = m.terminal_no
where amount between 50000 and 250000
order by t.trandate