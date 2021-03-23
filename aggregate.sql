SELECT COUNT(*) FROM books;
SELECT COUNT(author_fname) FROM books;
SELECT COUNT(DISTINCT author_fname) FROM books;
select count(*) from books where title like '%the%';
select title, author_lname from books;
select title, author_lname from books group by author_lname;
select author_fname, author_lname, count(*) as 'book count' from books group by author_lname, author_fname;
SELECT CONCAT('In ', released_year, ', ', COUNT(*), ' books released') AS year FROM books GROUP BY released_year;
SELECT MIN(released_year) FROM books;
SELECT MIN(pages) FROM books;
SELECT MAX(pages) FROM books;
SELECT MAX(released_year) FROM books;
SELECT MAX(pages), title FROM books;
SELECT title, pages FROM books WHERE pages = (SELECT MIN(pages) FROM books);
SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;
SELECT author_fname, author_lname, MIN(released_year) FROM books GROUP BY author_fname, author_lname;
SELECT
  CONCAT(author_fname, ' ', author_lname) AS author,
  MAX(pages) AS 'longest book'
FROM books
GROUP BY author_lname, author_fname;
SELECT SUM(pages) FROM books;
SELECT author_fname, author_lname, SUM(pages) FROM books GROUP BY author_fname, author_lname;
SELECT AVG(released_year) FROM books;
SELECT AVG(pages) FROM books;
SELECT released_year, AVG(stock_quantity) FROM books GROUP BY released_year;
SELECT author_fname, author_lname, AVG(pages) FROM books GROUP BY author_fname, author_lname;