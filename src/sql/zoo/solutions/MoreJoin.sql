/*1
List the films where the yr is 1962 [Show id, title]
*/
        SELECT id, title
        FROM movie
        WHERE yr=1962

/*2
Give year of 'Citizen Kane'.
*/
        SELECT yr
        FROM movie
        WHERE title = 'Citizen Kane'

/*3
List all of the Star Trek movies, include the id, title and yr (all of these movies include the words Star Trek in the title). Order results by year.
*/
        SELECT id, title, yr
        FROM movie
        WHERE title LIKE '%star trek%'
        ORDER BY yr


/*4
What id number does the actor 'Glenn Close' have?
*/
        SELECT id
        FROM actor
        WHERE name = 'Glenn Close'

/*5
What is the id of the film 'Casablanca'
*/
        SELECT id
        FROM movie
        WHERE title = 'Casablanca'

/*6
Obtain the cast list for 'Casablanca'.
what is a cast list?
Use movieid=11768 this is the value that you obtained in the previous question.
*/
            SELECT name FROM actor JOIN casting
            ON actor.id=casting.actorid
            WHERE casting.movieid=27

/*7
Obtain the cast list for the film 'Alien'
*/
        SELECT name FROM actor JOIN casting
          ON id=actorid AND movieid = (SELECT id FROM movie WHERE title = 'Alien')

/*8
List the films in which 'Harrison Ford' has appeared
 */
        SELECT title FROM movie
        JOIN casting ON id=movieid and actorid = (SELECT id FROM actor WHERE name='Harrison Ford')

/*9
List the films where 'Harrison Ford' has appeared - but not in the starring role. [Note: the ord field of casting gives the position of the actor. If ord=1 then this actor is in the starring role]
 */
        SELECT title FROM movie
        JOIN casting ON id=movieid AND actorid = (SELECT id FROM actor WHERE name='Harrison Ford')
        AND ord!=1

/*10
List the films together with the leading star for all 1962 films.
 */
        SELECT title, name FROM movie
        JOIN casting ON (id=movieid)
        JOIN actor ON (actor.id = actorid)
        WHERE ord=1 AND  yr = 1962

