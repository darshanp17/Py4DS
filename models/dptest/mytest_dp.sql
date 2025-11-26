{{ config(materialized='table') }}
with dbttest as(
select
    CUSTOMER_ID,
    FIRST_NAME,
    FIRST_ORDER_DATE,
    MOST_RECENT_ORDER_DATE,
    NUMBER_OF_ORDERS
from {{ ref('dim_customer') }}
where NUMBER_OF_ORDERS > 0 and CUSTOMER_ID < 50)


select * from dbttest
