-- ADVANCED / JOIN QUERIES
-- For all of these queries, you SHOULD NOT use an id # in a WHERE clause
-- okay.
-- Find all fields (book and author related) for all books written by George R.R. Martin.
SELECT * FROM books JOIN authors ON(books.author_id = authors.id) WHERE name = 'George R.R. Martin';
-- Find all fields (book and author related) for all books written by Milan Kundera.
SELECT * FROM books JOIN authors ON(books.author_id = authors.id) WHERE name = 'Milan Kundera';
-- Find all books written by an author from China or the UK.
SELECT * FROM books JOIN authors ON(books.author_id = authors.id) WHERE nationality = 'China' OR nationality = 'United Kingdom';
-- Find out how many books Albert Camus wrote.
 SELECT COUNT(title) FROM books WHERE author_id = (SELECT id FROM authors WHERE name = 'Albert Camus' LIMIT 1);
-- Find out how many books written before 1980 were by authors not from the US.
SELECT COUNT(title) FROM books JOIN (SELECT * FROM authors WHERE nationality != 'United States of America') AS choices ON (books.author_id = choices.id) WHERE publication_date<1980;
-- For these last two, you should not need a JOIN.
--okay
-- Find all authors whose names start with 'J'.
SELECT * FROM authors WHERE name ~~ 'J%';
-- Find all books whose titles contain 'the'.
SELECT * FROM books WHERE title ~~ '%the%';
--if you wanted case insensitive:
SELECT * FROM books WHERE title ~~* '%the%';