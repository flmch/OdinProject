#1

SELECT id, title
 FROM movie
 WHERE yr=1962

 #2

 SELECT yr FROM movie
WHERE title = 'Citizen Kane'

 #3

 SELECT id,title,yr FROM movie
WHERE title LIKE 'Star Trek%'
ORDER BY yr

#4

SELECT title FROM movie
WHERE id IN (11768, 11955, 21191)

#5

SELECT id FROM actor
WHERE name = 'Glenn Close'

#6

SELECT id FROM movie
WHERE title = 'Casablanca'

#7

SELECT  name FROM 
actor JOIN casting ON id=actorid
WHERE movieid = 11768

#8

SELECT actor.name FROM
casting JOIN movie ON casting.movieid = movie.id
            JOIN actor ON casting.actorid = actor.id
WHERE movie.title = 'Alien'

#9

SELECT movie.title FROM
casting JOIN movie ON casting.movieid = movie.id
            JOIN actor ON casting.actorid = actor.id
WHERE actor.name = 'Harrison Ford'

#10

SELECT movie.title FROM
casting JOIN movie ON casting.movieid = movie.id
            JOIN actor ON casting.actorid = actor.id
WHERE actor.name = 'Harrison Ford'
AND ord != 1

#11

SELECT movie.title, actor.name FROM
casting JOIN movie ON casting.movieid = movie.id
            JOIN actor ON casting.actorid = actor.id
WHERE ord =1 AND yr = 1962

#12

SELECT yr,COUNT(title) FROM
  movie JOIN casting ON movie.id=movieid
         JOIN actor   ON actorid=actor.id
WHERE name='John Travolta'
GROUP BY yr
HAVING COUNT(title)=(SELECT MAX(c) FROM
(SELECT yr,COUNT(title) AS c FROM
   movie JOIN casting ON movie.id=movieid
         JOIN actor   ON actorid=actor.id
 WHERE name='John Travolta'
 GROUP BY yr) AS t
)

#13

SELECT title,name FROM
casting JOIN movie 
         ON casting.movieid = movie.id
        JOIN actor
         ON casting.actorid = actor.id
WHERE ord =1 AND
movieid IN
(SELECT movieid FROM
casting JOIN actor 
         ON casting.actorid = actor.id
WHERE name = 'Julie Andrews') 

#14

SELECT name  FROM 
 casting JOIN actor ON actorid = id
    WHERE ord = 1
    GROUP BY actorid
    HAVING COUNT(actorid) >=30
    ORDER BY name

#15

SELECT title, COUNT(actorid) FROM
casting RIGHT JOIN movie 
         ON casting.movieid = movie.id
WHERE yr = 1978
GROUP BY id
ORDER BY COUNT(*) DESC