-- Step 1: Create a Clean View for the Netflix Dataset
CREATE VIEW v_cleaned_netflix_data AS
SELECT 
    "show_id" AS show_id,
    "type" AS show_type,
    "title" AS title,
    
    -- If director name is null, replace with Unknown
    CASE 
        WHEN "director" = 'null' OR "director" IS NULL THEN 'Unknown'
        ELSE "director"
    END AS director_name,
    
    -- If cast members are null, replace with Unknown
    CASE 
        WHEN "cast" = 'null' OR "cast" IS NULL THEN 'Unknown'
        ELSE "cast"
    END AS cast_members,
    
    -- If country is null, replace with Unknown
    CASE 
        WHEN "country" = 'null' OR "country" IS NULL THEN 'Unknown'
        ELSE "country"
    END AS country_name,
    
    "date_added" AS date_added,
    "release_year" AS release_year,
    "rating" AS rating,
    "duration" AS duration,
    "listed_in" AS category,
    "description" AS description

FROM raw_netflix
-- Remove any empty bottom rows from the dataset
WHERE "show_id" IS NOT NULL AND "show_id" != '';
