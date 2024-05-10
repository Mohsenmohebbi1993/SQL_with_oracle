select * from tb_transactions t 
where not exists
(select * from tb_merchants m where terminalno = terminal_no and m.PROVINCECODE = '005')