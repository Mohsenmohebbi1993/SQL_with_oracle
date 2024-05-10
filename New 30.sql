with dey as (
select distinct terminalno from tb_transactions 
where substr(trandate, 1, 6) = '140110'
),
bahman as 
(
    select terminalno, sum(amount) sum_amount from tb_transactions 
    where substr(trandate, 1, 6) = '140111'
    group by terminalno
)
select d.terminalno, nvl(sum_amount, 0) sum_amount from dey d 
left join bahman b on d.terminalno = b.terminalno 