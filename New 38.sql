create or replace procedure pr_test
is 
begin 
-- body 
insert into tb_test_5 
select trandate, terminalno terminal, sum(amount) sum_amount
from tb_transactions 
where trandate = '14011101'
group by trandate, terminalno;
commit;
end;