/* Formatted on 3/17/2024 10:01:11 PM (QP5 v5.360) */
SELECT t.TRANDATE,
       t.TERMINALNO,
       t.VOUCHERAMOUNT,
       t.AMOUNT,
       CASE
           WHEN amount > 250000 AND t.VOUCHERAMOUNT IS NOT NULL
           THEN
               'High'
           WHEN amount BETWEEN 50000 AND 250000
           THEN
               CASE WHEN amount = 100000 THEN 'M1' ELSE 'M2' END
           ELSE
               'Low'
       END    AS tran_effectivity
  FROM tb_transactions t