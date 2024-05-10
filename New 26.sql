select substr(trandate, 1, 6) year_month, m.PROVINCENAME, sum(amount) sum_amount, count(*) cnt_trans 
from tb_transactions t 
inner join tb_merchants m on t.TERMINALNO = m.TERMINAL_NO
group by substr(trandate, 1, 6), m.provincename