SELECT DISTINCT tmdb."Movie", tmdb."Vote_Count", tmdb."Vote_Average"
FROM tmdb
INNER JOIN netflix ON
netflix."Movie" = tmdb."Movie"
ORDER BY tmdb."Vote_Average" desc;

