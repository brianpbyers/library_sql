-- BASIC QUERIES
-- Unless otherwise stated, all queries should return all columns

-- Get all information about all authors
SELECT * FROM authors;

-- Get just the name and birth year of all authors
SELECT (name, birth_year) FROM authors;

-- Get all authors born in the 20th centruy or later
SELECT * FROM authors where birth_year>=1900;

-- Get all authors born in the USA
SELECT * FROM authors where nationality = 'United States of America';

-- Get all books published on 1985
SELECT * FROM books where publication_date = 1985;

-- Get all books published before 1989
SELECT * FROM books where publication_date < 1989;

-- Get just the title of all books.
SELECT title FROM books;

-- Get just the year that 'A Dance with Dragons' was published
SELECT publication_date FROM books WHERE title = 'A Dance with Dragons';
  -- Cry when you realize how long it's been
  	-- :'(


-- Get all books which have `the` somewhere in their title (hint, look up LIKE/ILIKE)
-- case sensitive
SELECT * FROM books WHERE title LIKE '%the%';
-- case insensitive (~~ is like, the * makes it ILIKE)
SELECT * FROM books WHERE title ~~* '%the%';
-- Add yourself as an author
INSERT INTO authors VALUES (9, 'Brian Byers', 'Dual', 1988);

-- Add two books that you'd like to write (you can hard-code your id as the author id)
INSERT INTO books VALUES (69, 'Doors of Stone', 2018, 9),(70, 'How to Eat a Potato', 2019, 9);

-- Update one of your books to have a new title
UPDATE books SET title = 'POTATOES ARE DELICIOUS!' WHERE id = '70';

-- Delete your books
DELETE FROM books WHERE author_id = 9;

-- Delete your author entry
DELETE FROM authors WHERE id = 9;