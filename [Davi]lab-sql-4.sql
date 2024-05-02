-- Get film ratings.
SELECT TITLE, RATING
FROM SAKILA.FILM;

-- Get release years.
SELECT TITLE, RELEASE_YEAR
FROM SAKILA.FILM;

-- Get all films with ARMAGEDDON in the title.
SELECT TITLE
FROM SAKILA.FILM
WHERE TITLE LIKE '%ARMAGEDDON%';

-- Get all films with APOLLO in the title
SELECT TITLE
FROM SAKILA.FILM
WHERE TITLE LIKE '%APOLLO%';

-- Get all films which title ends with APOLLO.
SELECT TITLE
FROM SAKILA.FILM
WHERE TITLE LIKE '%APOLLO';

-- Get all films with word DATE in the title
SELECT * FROM SAKILA.FILM
WHERE TITLE REGEXP '\\bdate\\b';

-- Get 10 films with the longest title.
SELECT * FROM sakila.film
ORDER BY CHAR_LENGTH(TITLE) DESC
LIMIT 10;

-- Get 10 the longest films.
SELECT * FROM sakila.film
ORDER BY length DESC
LIMIT 10;

-- How many films include Behind the Scenes content?
SELECT COUNT(*)
FROM SAKILA.FILM
WHERE SPECIAL_FEATURES LIKE '%Behind the Scenes%';

-- List films ordered by release year and title in alphabetical order.
SELECT TITLE, RELEASE_YEAR
FROM SAKILA.FILM
ORDER BY RELEASE_YEAR ASC, TITLE;