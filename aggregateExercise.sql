SELECT
  COUNT(*) AS 'number of books'
FROM books;
SELECT
  released_year,
  COUNT(*) AS 'number of published book(s)'
FROM books
GROUP BY released_year
ORDER BY released_year ASC;
SELECT
  SUM(stock_quantity) AS 'total number of books in stock'
FROM books;
SELECT
  author_fname,
  author_lname,
  AVG(released_year)
FROM books
GROUP BY author_fname,
         author_lname;
-- SELECT CONCAT(author_fname, ' ', author_lname) AS 'full name' FROM books WHERE pages = (SELECT MAX(pages) FROM books);
SELECT CONCAT(author_fname, ' ', author_lname) AS 'full name' FROM books ORDER BY pages DESC LIMIT 1;
SELECT
  released_year AS year,
  COUNT(*) AS '# books',
  AVG(pages) AS 'avg pages'
FROM books
GROUP BY released_year
ORDER BY released_year ASC;