/* Formatted on 3/17/2024 10:43:44 PM (QP5 v5.360) */
  SELECT t.TRANDATE,
         t.TERMINALNO,
         SUM (t.AMOUNT)     sum_amount,
         COUNT (*)          count_trans,
         MAX (t.amount)     max_amount
    FROM tb_transactions t
    where t.TERMINALNO in (select terminal_no from tb_merchants where provincecode = '005')
--    and amount != 0
    and amount <> 0
GROUP BY t.TRANDATE, t.TERMINALNO