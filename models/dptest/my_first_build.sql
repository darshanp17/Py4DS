
{{ config(materialized='CUSTOMER_LIST') }}

select
    CUSTOMER_ID,
    FIRST_NAME,
    FIRST_ORDER_DATE,
    MOST_RECENT_ORDER_DATE,
    NUMBER_OF_ORDERS
from {{ ref('DIM_CUSTOMER') }}
where NUMBER_OF_ORDERS > 0



