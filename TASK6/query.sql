select 
extract(Year from order_date) as year_,
extract(Month from order_date) as month_,
count(*) as total_orders,
sum(amount) as revenue
from 
online_sales_orders
group by 
extract(Year from order_date),
extract(Month from order_date)
order by year_,month_;
