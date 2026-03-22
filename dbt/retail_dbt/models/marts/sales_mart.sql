select
    s.sale_id,
    s.order_id,
    s.product_id,
    s.quantity,

    p.product_name,
    p.category,
    p.price,

    s.quantity * p.price as total_amount

from {{ ref('stg_retail_sales') }} s

left join {{ ref('stg_products') }} p
    on s.product_id = p.product_id