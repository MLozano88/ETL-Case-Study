DROP TABLE IF EXISTS tmdb CASCADE;
DROP TABLE IF EXISTS netflix CASCADE;
DROP TABLE IF EXISTS oscars CASCADE;

CREATE TABLE "tmdb"(    
	"Id" INT NOT NULL,
    "Movie" VARCHAR NOT NULL,
    "Description" VARCHAR NOT NULL,
    "Vote_Count" INT NOT NULL,
    "Vote_Average" FLOAT NOT NULL
);

CREATE TABLE "netflix" (
    "Movie" VARCHAR   NOT NULL,
    "Director" VARCHAR   NOT NULL,
    "Country" VARCHAR   NOT NULL,
    "Year" INT   NOT NULL
);

CREATE TABLE "oscars" (
    "Movie" VARCHAR   NOT NULL,
    "Award" VARCHAR   NOT NULL,
    "Year_of_Award" INT   NOT NULL
);