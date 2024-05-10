select t.TERMINALNO, sum(t.amount) sum_amount from tb_transactions t 
where substr(t.trandate, 1, 6) = '140111' 
and exists (select * from tb_transactions t1 where t.TERMINALNO = t1.TERMINALNO and 
substr(t1.TRANDATE, 1, 6) = '140110')
group by t.TERMINALNO