select year_month, sum(amount)/sum_amount from 
(
    select substr(t.trandate, 1, 6) year_month, t.terminalno, amount,
    row_number() over (partition by substr(t.trandate, 1, 6) order by amount desc) rn,
    count (*) over (partition by substr(t.trandate, 1, 6)) cnt,
    sum(amount) over (partition by substr(t.trandate, 1, 6)) sum_amount   
    from tb_transactions t
)
where rn <= 0.02 * cnt
group by year_month, sum_amount