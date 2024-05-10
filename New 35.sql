select * from 
(
	select year_month, terminalno, sum_amount, cnt_trans, provincename,
	row_number () over (partition by year_month, provincename order by sum_amount desc) rn from 
	(
		select substr(t.trandate, 1, 6) year_month, t.terminalno, m.PROVINCENAME,
		sum(t.amount) sum_amount,
		count(*) cnt_trans
		from tb_transactions t
		inner join tb_merchants m on t.TERMINALNO = m.TERMINAL_NO
		where t.TRANSTATUS <> 'U'
		group by substr(t.trandate, 1, 6), t.TERMINALNO, m.PROVINCENAME
	)
)
where rn <= 3
