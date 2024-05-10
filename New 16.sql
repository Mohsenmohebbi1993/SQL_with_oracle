select distinct terminalno, trandate from tb_transactions
where substr(trandate, 1, 6) = '140110'