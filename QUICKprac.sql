--selects all from movie_genre
select *
from movie_genre;
----selects all from nicolas_cage_movies
select *
from nicolas_cage_movies;

--What genres of movies has Nicolas Cage been in? actions 

select *
from nicolas_cage_movies join movie_genre
on movie_genre.movie_id = nicolas_cage_movies.movie_id ;