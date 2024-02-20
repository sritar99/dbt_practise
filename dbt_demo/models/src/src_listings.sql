with raw_listings AS (
    select * from AIRBNB.RAW.RAW_LISTINGS
)

select 
    id as listing_id,
    name as listin_name,
    listing_url,
    ROOM_TYPE,
    MINIMUM_NIGHTS,
    HOST_ID,
    price as price_str,
    CREATED_AT,
    UPDATED_AT
from 
    raw_listings
