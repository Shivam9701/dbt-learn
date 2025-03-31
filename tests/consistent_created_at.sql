SELECT 
    *
FROM 
    {{ ref('fct_reviews') }} AS reviews
INNER JOIN 
    {{ ref('dim_listings_cleansed') }} AS listings
ON 
    reviews.listing_id = listings.listing_id
WHERE 
    reviews.review_date < listings.created_at
