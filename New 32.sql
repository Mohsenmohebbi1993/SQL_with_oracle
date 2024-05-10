select * from 
(
    select substr(t.trandate, 1, 6) year_month, terminalno, count(distinct trandate) cnt_day
    from tb_transactions t 
    group by substr(t.trandate, 1, 6), terminalno
)
where cnt_day<=10