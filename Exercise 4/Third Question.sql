select plan.city_code, avg(w_plan.roas)
from lu_plan plan,
     f_w_coefficientes w_plan 
where plan.id_plan = w_plan.id_plan
group by plan.city_code;

select plan.city_code, avg(m_plan.roas)
from lu_plan plan,
     f_w_coefficientes m_plan 
where plan.id_plan = m_plan.id_plan
group by plan.city_code;

select plan.city_code, avg(y_plan.roas)
from lu_plan plan,
     f_w_coefficientes y_plan 
where plan.id_plan = m_plan.id_plan
group by plan.city_code;