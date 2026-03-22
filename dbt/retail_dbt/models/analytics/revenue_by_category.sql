select
    category,
    sum(total_amount) as revenue
from {{ ref('sales_mart') }}
group by category  