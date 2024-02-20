with raw_reviews AS(
    select * from AIRBNB.RAW.RAW_REVIEWS
)

select
    LISTING_ID,
    date as review_date,
    REVIEWER_NAME,
    comments as review_text,
    SENTIMENT as review_sentiment
from
    raw_reviews