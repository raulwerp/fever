select plan.desc_plan, w_plan.w_ctp
from lu_plan plan,
(select id_plan, avg(ctp) w_ctp
from f_w_coefficientes     
group by id_plan
order by w_ctp
limit 10) w_plan 
where plan.id_plan = w_plan.id_plan;

select plan.desc_plan, m_plan.m_ctp
from lu_plan plan,
(select id_plan, avg(ctp) m_ctp
from f_m_coefficientes     
group by id_plan
order by m_ctp
limit 10) m_plan
where plan.id_plan = m_plan.id_plan;

select plan.desc_plan, y_plan.y_ctp
from lu_plan plan,
(select id_plan, avg(ctp) y_ctp
from f_y_coefficientes     
group by id_plan
order by y_ctp
limit 10) y_plan
where plan.id_plan = y_plan.id_plan;