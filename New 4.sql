select * from tb_transactions t
where t.TERMINALNO = '81490965' and t.AMOUNT between 100000 and 1000000
and t.VOUCHERAMOUNT is null