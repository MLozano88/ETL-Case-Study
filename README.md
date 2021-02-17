# ETL Case Study - Movies, Movies, Movies!
### Team Members: Mario Lozano, Jini Hassan, & Wasif Khan

## Datasets we used:
- [Popular Movies of TMDB - Kaggle](https://www.kaggle.com/sankha1998/tmdb-top-10000-popular-movies-dataset)
    * "TMDB.org is a crowd-sourced movie information database used by many film-related consoles, sites and apps, such as XBMC, MythTV and Plex. Dozens of media managers, mobile apps and social sites make use of its API. This dataset consists of the 10,000 most popular movies across the world fetched through the read API."
- [Netflix Movies and TV Shows - Kaggle](https://www.kaggle.com/shivamb/netflix-shows)
    * "This dataset consists of tv shows and movies available on Netflix as of 2019. The dataset is collected from Flixable which is a third-party Netflix search engine."
- [Academy Awards Demographics - Data World](https://data.world/crowdflower/academy-awards-demographics)
    * "A data set concerning the race, religion, age, and other demographic details of all Oscar winners since 1928."

## Summary and Motivation:
As a group, we were fascinated by movies so we decided to find  datasets pertaining to this topic. With the datasets we collected, we wanted to find the most popular movies on Netflix (in terms of vote average and count) from TMDB. This will determine which movies you can watch on Netflix that have the highest vote average according to TMDB. We also used the Academy Awards Demographics dataset and the TMDB dataset to find the vote average score for each Oscar-winning movie. 

## Folders Directory
- [Transformation Center](https://github.com/RH-cmd/ETL-Case-Study/tree/main/Transformation%20Center) includes all jupyter notebooks and csvs used for exploring, cleaning, and loading the data for each dataset separately 
    * [Resources Folder](https://github.com/RH-cmd/ETL-Case-Study/tree/main/Transformation%20Center/Resources) contains the original datasets
- [Entity Relationship Diagram](https://github.com/RH-cmd/ETL-Case-Study/blob/main/ERD.png) shows a visual of our table schema to load our data 
![ERD](https://github.com/RH-cmd/ETL-Case-Study/blob/main/ERD.png)
- [Merge and Upload Jupyter Notebook](https://github.com/RH-cmd/ETL-Case-Study/blob/main/merge_and_upload.ipynb) shows how we loaded the csvs into Postgres using SQLalchemy 
- [Table Schema](https://github.com/RH-cmd/ETL-Case-Study/blob/main/table_schema.sql) created the tables in Postgres and [Queries SQL](https://github.com/RH-cmd/ETL-Case-Study/blob/main/queries.sql) merged our datasets using specific parameters.

## Results
* Top Movies on Netflix and their vote average score in descending order
![Netflix and TMDB](https://github.com/RH-cmd/ETL-Case-Study/blob/main/images/Movie_Join.PNG)

* Oscar Winning movies and their vote average score in descending order
![Oscars and TMDB](https://github.com/RH-cmd/ETL-Case-Study/blob/main/images/Oscars_Join.PNG)

