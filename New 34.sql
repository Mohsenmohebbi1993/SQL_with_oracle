
	select year_month, terminalno, sum_amount, 
--	row_number () over (order by sum_amount desc) rn,
	count (*) over (partition by year_month order by sum_amount desc) cnt1,
	count (*) over (partition by year_month) cnt2,
	count (*) over () cnt3,
	sum (sum_amount) over (partition by year_month order by sum_amount desc) sum1,
	sum (sum_amount) over (partition by year_month) sum2,
	sum (sum_amount) over () sum3
	from 
	(
		select substr(t.trandate, 1, 6) year_month, t.terminalno, 
		sum(t.amount) sum_amount
		from tb_transactions t
		group by substr(t.trandate, 1, 6), t.terminalno
	)
