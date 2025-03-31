WITH raw_listings AS(
    SELECT 
        *
    FROM {{ source('airbnb', 'listings') }}
)
SELECT 
    id listing_id,
    listing_url,
    name listing_name,
    room_type,
    minimum_nights,
    host_id,
    price price_str,
    created_at,
    updated_at
FROM RAW_LISTINGS