CREATE DATABASE MOVIE_DATABASE
USE MOVIE_DATABASE

CREATE TABLE movie(
	mov_id INT IDENTITY(1,1) PRIMARY KEY,
	mov_title CHAR(50),
	mov_year INT,
	mov_time INT,
	mov_lang CHAR(50),
	mov_dt_rel DATE,
	mov_rel_country char(5)
)

INSERT movie (
	mov_title,mov_year,mov_time,
	mov_lang,mov_dt_rel,mov_rel_country
) VALUES (
	'Vertigo',1958,128,
	'English','1958-08-24','UK'
)

SELECT * FROM movie

CREATE TABLE actor(
	act_id INT IDENTITY(1,1) PRIMARY KEY,
	act_fname CHAR(20),
	act_lname CHAR(20),
	act_gender CHAR(1)
)

INSERT actor (act_fname, act_lname, act_gender) 
VALUES ('Maria', 'Pedrovisky', 'F')

SELECT * FROM actor


CREATE TABLE movie_cast(
	act_id INT FOREIGN KEY REFERENCES actor(act_id),
	mov_id INT FOREIGN KEY REFERENCES movie(mov_id),
	act_role CHAR(30)
)

INSERT movie_cast (act_id, mov_id, act_role)
VALUES (1, 1, 'Ladrão'), (2, 1, 'Moça')

SELECT * FROM movie_cast


CREATE TABLE genres(
	gen_id INT IDENTITY(1,1) PRIMARY KEY,
	gen_title CHAR(20)
)

INSERT genres (gen_title) VALUES ('Ação')



CREATE TABLE movie_genres(
	mov_id INT FOREIGN KEY REFERENCES movie(mov_id),
	gen_id INT FOREIGN KEY REFERENCES genres(gen_id)
)
SELECT * FROM movie_genres

INSERT movie_genres (mov_id, gen_id) VALUES (1, 1)


SELECT * FROM movie  
JOIN movie_cast ON movie.mov_id = movie_cast.mov_id
JOIN actor ON movie_cast.act_id = actor.act_id