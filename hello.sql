SELECT 
	author_fname AS first, author_lname AS last,
	CONCAT(author_fname, ',', author_lname) AS full
FROM books;
SELECT CONCAT_WS('-', title, author_fname, author_lname) FROM books;
SELECT 
	CONCAT
    (
		SUBSTRING(title, 1, 10),
        '...'
	) AS 'short title'
FROM books;
SELECT REPLACE('Hello World', 'Hell', '%$#@');
SELECT REPLACE('Hello World', 'l', '7');
SELECT REPLACE('Hello World', 'o', '0');
SELECT
  REPLACE('cheese bread coffee milk', ' ', ' and ');
SELECT SUBSTRING(REPLACE(title, 'e', '3'), 1, 10) AS 'refactored title' FROM books;
SELECT REVERSE('Hello World');
SELECT CONCAT(author_fname, ' ', REVERSE(author_fname)) FROM books;
SELECT 
	CONCAT
    (
		author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long'
	) AS 'lname length' 
FROM books;
SELECT UPPER('Hello World');
SELECT LOWER('Hello World');
SELECT UPPER(title) FROM books;
SELECT CONCAT('MY FAVORITE BOOK IS ', UPPER(title)) AS 'UPPERCASE title' FROM books;
SELECT CONCAT('MY FAVORITE BOOK IS ', LOWER(title)) AS 'LOWERCASE title' FROM books;
SELECT UPPER(REVERSE('why does my cat look at me with such hatred?'));
-- I-like-cats
SELECT REPLACE(title, ' ', '->') AS title FROM books;
SELECT author_lname AS forwards, REVERSE(author_lname) AS backwards FROM books;
SELECT UPPER(CONCAT(author_fname, ' ', author_lname)) AS 'full name in caps' FROM books;
SELECT CONCAT(title, ' was released in ', released_year) AS blurb FROM books;
SELECT title, CHAR_LENGTH(title) AS 'character count' FROM books;
SELECT
  CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short title',
  CONCAT(author_lname, ',', author_fname) AS author,
  CONCAT(stock_quantity, ' in stock') AS quantity
FROM books;
INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
-- SELECT DISTINCT author_lname FROM books;
-- SELECT DISTINCT released_year FROM books;
-- SELECT DISTINCT CONCAT(author_fname, ' ', author_lname) AS author FROM books;
SELECT DISTINCT author_fname, author_lname FROM books;
SELECT author_lname FROM books ORDER BY author_lname;
SELECT title FROM books ORDER BY title DESC;
SELECT author_lname FROM books ORDER BY author_lname DESC;
SELECT released_year FROM books;
SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 0, 5; 
SELECT title, author_fname FROM books WHERE author_fname LIKE 'da%';
SELECT title FROM books WHERE title LIKE '%the%';
SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '____';
SELECT title FROM books WHERE title LIKE '%\_%';
SELECT released_year FROM books ORDER BY released_year;
SELECT title, author_fname, author_lname FROM books ORDER BY 1;
SELECT author_fname, author_lname FROM books ORDER BY author_fname, author_lname;