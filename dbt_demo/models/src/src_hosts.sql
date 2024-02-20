with raw_hosts as (
    select * from airbnb.raw.raw_hosts
)

select 
    id as host_id,
    NAME AS host_name,
    is_superhost,
    created_at,
    updated_at
FROM
    raw_hosts