-- Table: public.digital_music_reviews
CREATE TABLE digital_music_reviews
(
    marketplace text,
    customer_id VARCHAR,
    review_id text,
    product_id text,
    product_parent VARCHAR,
    product_title text,
    product_category text,
    star_rating VARCHAR,
    helpful_votes VARCHAR,
    total_votes VARCHAR,
    vine text,
    verified_purchase text,
    review_headline text,
    review_body text,
    review_date VARCHAR
)
SELECT * FROM digital_music_reviews;
