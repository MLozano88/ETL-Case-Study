-- Merge Netflix and TMDB tables on movie name and rank the movies by vote average
-- in descending order and only show results that have 500 or more votes
This will show us the netflix movies 
SELECT DISTINCT tmdb."Movie", tmdb."Vote_Count", tmdb."Vote_Average"
FROM tmdb
INNER JOIN netflix ON
netflix."Movie" = tmdb."Movie"
WHERE tmdb."Vote_Count" >= 1000
ORDER BY tmdb."Vote_Average" desc;

-- Merge Oscars and TMDB tables on movie name and rank the movies by vote average
-- in descending order and only show results that have 500 or more votes
SELECT DISTINCT tmdb."Movie", tmdb."Vote_Count", tmdb."Vote_Average"
FROM tmdb
INNER JOIN oscars ON
oscars."Movie" = tmdb."Movie"
WHERE tmdb."Vote_Count" >= 500
ORDER BY tmdb."Vote_Average" desc;