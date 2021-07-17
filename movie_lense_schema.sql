DROP TABLE movie_meta;

CREATE TABLE movie_meta (
		movieid	INT PRIMARY KEY,
		collectionname VARCHAR,
		productioncompanies VARCHAR,
		productioncountries VARCHAR,
		countryabb VARCHAR,
		releaseyear INT
);

DROP TABLE keywords;

CREATE TABLE keywords (
  movieid INT PRIMARY KEY,
  keywords VARCHAR
);

DROP TABLE movie_genres;

CREATE TABLE movie_genres(
	movieid INT PRIMARY KEY,
	genres VARCHAR,
	vote_average INT
);

SELECT * FROM movie_genres;

CREATE TABLE movie_rating (
	movieid INT PRIMARY KEY,
  	title VARCHAR,
  	budget FLOAT,
  	revenue FLOAT,
	profit FLOAT,
	rating FLOAT
);

SELECT *
FROM movie_meta AS mm
   INNER JOIN
   keywords AS kw
   ON mm.movieid = kw.movieid
   INNER JOIN
   movie_genres AS dg
   ON mm.movieid = dg.movieid
   INNER JOIN
   movie_rating AS mr
   ON mm.movieid = mr.movieid


SELECT * FROM movie_rating;