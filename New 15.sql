/* Formatted on 3/17/2024 10:43:44 PM (QP5 v5.360) */
  SELECT substr(t.TRANDATE, 1, 6) year_month,
         avg (t.AMOUNT)     avg_amount,
         count(*) count_trans,
         count(distinct t.trandate) cnt_date
    FROM tb_transactions t
    where t.TERMINALNO in (select terminal_no from tb_merchants where provincecode = '005')
GROUP BY substr(t.TRANDATE, 1, 6)