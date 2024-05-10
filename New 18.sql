/* Formatted on 3/17/2024 10:43:44 PM (QP5 v5.360) */
  SELECT TRANDATE,
         avg (t.AMOUNT)     avg_amount,
         count(*) count_trans
    FROM tb_transactions t
GROUP BY t.TRANDATE
having count(*)>=100 and count(distinct terminalno)>10