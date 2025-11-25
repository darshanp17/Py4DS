
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='CUSTOMER_LIST') }}

select
    CUSTOMER_ID,
    FIRST_NAME,
    FIRST_ORDER_DATE,
    MOST_RECENT_ORDER_DATE
from {{ ref('DIM_CUSTOMER') }}
where     FIRST_ORDER_DATE IS NOT NULL



