with c1 as 
(
    select terminalno, count(*) cnt_trans from tb_transactions t 
    where substr(trandate, 1, 6) = '140110' 
    group by terminalno 
)
select m.TERMINAL_NO, nvl(cnt_trans, 0) cnt_trans from c1 
right join tb_merchants m on m.terminal_no = c1.TERMINALNO
