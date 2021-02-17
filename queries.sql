<<<<<<< HEAD
-- Merge Netflix and TMDB tables on movie name and rank the movies by vote average in descending order and only show results that have 500 or more votes
This will show us the netflix mocies 
=======
>>>>>>> 92353a1cb2b85c70052e15936d694b281e726e30
SELECT DISTINCT tmdb."Movie", tmdb."Vote_Count", tmdb."Vote_Average"
FROM tmdb
INNER JOIN netflix ON
netflix."Movie" = tmdb."Movie"
<<<<<<< HEAD
WHERE tmdb."Vote_Count" >= 500
ORDER BY tmdb."Vote_Average" DESC;
=======
ORDER BY tmdb."Vote_Average" desc;
>>>>>>> 92353a1cb2b85c70052e15936d694b281e726e30

