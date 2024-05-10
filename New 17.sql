select substr(trandate, 1, 6),  
sum(amount),
count(*),
sum(case when amount>100000 then amount end) sum_amount_up_100000,
count(case when amount>100000 then amount end) cnt_trans_up_100000,
sum(case when amount<=100000 then amount end) sum_amount_under_100000,
count(case when amount<=100000 then amount end) cnt_trans_under_100000
from tb_transactions
group by substr(trandate, 1, 6)