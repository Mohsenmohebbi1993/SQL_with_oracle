select * from tb_transactions t
where t.TERMINALNO = '81490965' and t.AMOUNT>=100000
and t.VOUCHERAMOUNT is null and t.amount<=1000000