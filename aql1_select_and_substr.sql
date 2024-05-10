/* Formatted on 5/2/2024 11:47:20 PM (QP5 v5.360) */

SELECT t.TRANDATE,
       SUBSTR (t.TRANDATE, 1, 4)     tran_year,
       SUBSTR (t.TRANDATE, 5, 2)     tran_ymonth,
       SUBSTR (t.TRANDATE, 7, 2)     tran_day,
       t.TRANTIME,
       SUBSTR (t.TRANTIME, 1, 2)     Hour,
       SUBSTR (t.TRANTIME, 3, 2)     minate,
       SUBSTR (t.TRANTIME, 5, 2)     secend,
       t.AMOUNT,
       t.VOUCHERAMOUNT,
       t.AMOUNT + t.VOUCHERAMOUNT
  FROM tb_transactions t
