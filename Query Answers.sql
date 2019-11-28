## QUESTION 1
select mov_title, mov_year
from movie;

## QUESTION 2
select mov_year
from movie
where MOV_TITLE = "American Beauty";

## QUESTION 3
select *
from movie
where mov_year = 1999;

## QUESTION 4
select *
from movie
where mov_year > 1998; 

## QUESTION 5
select rev_name, mov_title
from reviewer, movie;

## QUESTION 6
 select rev_name, rev_stars
 from reviewer
 join rating
 where rev_id = 5;
 
## QUESTION 7
select mov_title
from movie
join rating
where REV_STARS = null;

## QUESTION 8
select dir_fname, dir_lname, mov_title
from director, movie
where mov_title = 'Eyes Wide Shut';