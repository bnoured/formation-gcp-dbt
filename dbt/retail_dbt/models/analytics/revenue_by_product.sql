select
    product_name,
    category,
    sum(total_amount) as revenue
from {{ ref('sales_mart') }}
group by product_name, category