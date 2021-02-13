DROP TABLE IF EXISTS tmdb;
DROP TABLE IF EXISTS netflix;
DROP TABLE IF EXISTS oscars;

CREATE TABLE "tmdb" (
    "ID" INT   NOT NULL,
    "Movie" VARCHAR   NOT NULL,
    "Description" VARCHAR   NOT NULL,
    "Vote_Count" INT   NOT NULL,
    "Vote_Average" FLOAT   NOT NULL,
    CONSTRAINT "pk_tmdb" PRIMARY KEY (
        "Movie"
     )
);

CREATE TABLE "netflix" (
    "Movie" VARCHAR   NOT NULL,
    "Director" VARCHAR   NOT NULL,
    "Country" VARCHAR   NOT NULL,
    "Year" INT   NOT NULL,
    CONSTRAINT "pk_netflix" PRIMARY KEY (
        "Movie"
     )
);

CREATE TABLE "oscars" (
    "Movie" VARCHAR   NOT NULL,
    "Award" VARCHAR   NOT NULL,
    "Year_of_Award" INT   NOT NULL,
    CONSTRAINT "pk_oscars" PRIMARY KEY (
        "Movie"
     )
);

ALTER TABLE "netflix" ADD CONSTRAINT "fk_netflix_Movie" FOREIGN KEY("Movie")
REFERENCES "tmdb" ("Movie");

ALTER TABLE "oscars" ADD CONSTRAINT "fk_oscars_Movie" FOREIGN KEY("Movie")
REFERENCES "tmdb" ("Movie");

