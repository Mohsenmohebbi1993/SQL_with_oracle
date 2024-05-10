with t1 as
(
    select terminalno, count(*) cnt_trans_1_5 from tb_transactions
    where trandate between '14011101' and '14011105'
    group by terminalno
),
t2 as 
(
    select terminalno, count(*) cnt_trans_6_10 from tb_transactions
    where trandate between '14011106' and '14011110'
    group by terminalno
)
select * from t1
full outer join t2 on t1.terminalno = t2.terminalno