with mart_fullmoon_reviews as (
    select * from {{ref('mart_fullmoon_reviews')}}
)

select 
    IS_FULL_MOON,
    REVIEW_SENTIMENT,
    count(*) as REVIEWS
from mart_fullmoon_reviews
group by  
    IS_FULL_MOON,
    REVIEW_SENTIMENT
Order by
    IS_FULL_MOON,
    REVIEW_SENTIMENT