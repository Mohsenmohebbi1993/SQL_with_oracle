create view vw_trans_2 as
SELECT trandate,
           terminalno,
           amount,
           CASE
               WHEN amount > 250000 THEN 'high'
               WHEN amount BETWEEN 50000 AND 250000 THEN 'middle'
               ELSE 'low'
           END    AS effect
      FROM tb_transactions;