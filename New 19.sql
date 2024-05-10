select terminalno, tran_effectivity, count(*) cnt_trans
from 
(
	select terminalno,
	case when amount>250000 then 'High'
	when amount between 50000 and 250000 then 'Middle'
	else 'Low' end as tran_effectivity
	from tb_transactions
	where trandate = '14011003' and trantype = '00'
) 
group by terminalno, tran_effectivity
