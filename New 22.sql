With my_table as 
(
	select terminalno, amount,
	case when amount>250000 then 'High'
	when amount between 50000 and 250000 then 'Middle'
	else 'Low' end as tran_effectivity
	from tb_transactions
	where trandate = 14011003 and trantype = '00'
)
select terminalno, tran_effectivity, sum(amount) sum_amount from my_table 
group by terminalno, tran_effectivity
--select * from my_table_2
