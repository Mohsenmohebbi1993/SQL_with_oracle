select * from tb_transactions t 
where (t.TERMINALNO, t.PAN) in 
(select m.TERMINAL_NO, m.NATIONALCODE from tb_merchants m where m.PROVINCECODE = '005')