select avg(aux1.w_rev)
from (
select sum(revenue) w_rev
from f_w_coefficientes
group by week) aux1;

select avg(aux2.m_rev)
from(
select sum(revenue) m_rev
from f_m_coefficientes
group by month) aux2;

select avg(aux3.y_rev)
from(
select sum(revenue) y_rev
from f_y_coefficientes
group by year) aux3;