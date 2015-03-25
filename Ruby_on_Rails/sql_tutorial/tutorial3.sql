#1

SELECT * FROM nobel
 WHERE yr = 1950

 #2

select winner from nobel
where yr =1962 AND subject = "Literature"

 #3

SELECT yr, subject FROM nobel
WHERE winner = 'Albert Einstein'

 #4

SELECT winner FROM nobel
WHERE subject = 'Peace'
AND yr >= 2000

 #5

SELECT * FROM nobel
WHERE yr >= 1980
AND yr <=1989
AND subject = 'Literature'

 #6

SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson', 'Jed Bartlet', 'Jimmy Carter')

 #7

SELECT winner FROM nobel
WHERE winner LIKE 'John%'

 #8