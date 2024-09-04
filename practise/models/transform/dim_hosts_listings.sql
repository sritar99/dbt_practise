With 

dim_hosts_cleansed as(
    select * from {{ref('dim_hosts_cleansed')}}
),
dim_listings_cleansed as(
    select * from {{ref('dim_listings_cleansed')}}
)

SELECT 
 dim_listings_cleansed.listing_id,
 dim_listings_cleansed.listing_name,
 dim_listings_cleansed.room_type,
 dim_listings_cleansed.minimum_nights,
 dim_listings_cleansed.price,
 dim_listings_cleansed.host_id,
 dim_hosts_cleansed.host_name,
 dim_hosts_cleansed.is_superhost as host_is_superhost,
 dim_listings_cleansed.created_at,
 GREATEST(dim_listings_cleansed.updated_at, dim_hosts_cleansed.updated_at) as updated_at
FROM dim_listings_cleansed
LEFT JOIN dim_hosts_cleansed ON (dim_hosts_cleansed.host_id = dim_listings_cleansed.host_id)
 