select substr(t.trandate, 1, 6), terminalno, count(distinct trandate) 
from tb_transactions t 
group by substr(t.trandate, 1, 6), terminalno
having count(distinct trandate)<=10