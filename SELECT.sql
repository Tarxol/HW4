SELECT title, year FROM album
	WHERE year = 2018;
	
SELECT title, duration FROM track
	ORDER BY duration DESC
	LIMIT 1;
	
SELECT title FROM track
	WHERE duration >= '00:03:30';
	
SELECT title FROM collection
	WHERE year >= 2018 AND year <= 2020;
	
SELECT title FROM track
	WHERE title LIKE '%%мой%%';
	
SELECT title FROM track
	WHERE title LIKE '%%my%%';
	 
SELECT name FROM artist
	WHERE name NOT LIKE '%% %%';	