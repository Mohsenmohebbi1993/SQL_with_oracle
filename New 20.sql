With my_table as 
(
	select terminalno,
	case when amount>250000 then 'High'
	when amount between 50000 and 250000 then 'Middle'
	else 'Low' end as tran_effectivity
	from tb_transactions
	where trandate = 14011003 and trantype = '00'
),
my_table_2 as 
(
    select terminalno, sum(amount) sum_amount from tb_transactions 
    group by terminalno
)
select terminalno, tran_effectivity, count(*) cnt_trans
from my_table
group by terminalno, tran_effectivity
