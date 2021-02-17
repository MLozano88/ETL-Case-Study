-- Merge Netflix and TMDB tables on movie name and rank the movies by vote average in descending order and only show results that have 500 or more votes
This will show us the netflix mocies 
SELECT DISTINCT tmdb."Movie", tmdb."Vote_Count", tmdb."Vote_Average"
FROM tmdb
INNER JOIN netflix ON
netflix."Movie" = tmdb."Movie"
WHERE tmdb."Vote_Count" >= 500
ORDER BY tmdb."Vote_Average" DESC;

