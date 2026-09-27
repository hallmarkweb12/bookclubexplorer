CREATE TABLE IF NOT EXISTS book(
    book_id INTEGER NOT NULL,
    title TEXT NOT NULL,
    genre TEXT NOT NULL,
    rating REAL,
    pages INTEGER NOT NULL,
    pub_year INTEGE NOT NULL
)
INSERT INTO book(book_id,title,genre,rating,pages,pub_year) VALUES
(1, 'The Great Gatsby', 'Fiction', 7.2, 180, 1925),
(2, 'To Kill a Mockingbird', 'Fiction', 9.8, 281, 1960),
(3, '1984', 'Fiction', 8.6, 328, 1949),
(4, 'Sapiens', 'Non-Fiction', 7.7, 443, 2011),
(5, 'Educated', 'Non-Fiction', 4.5, 334, 2018),
(6, 'Becoming', 'Non-Fiction', 4.8, 448, 2018),
(7, 'Dune', 'Sci-Fi', 10.0, 412, 1965),
(8, 'The Hobbit', 'Sci-Fi', 4.9, 310, 1937);

SELECT * FROM book;

SELECT title, rating FROM book ORDER BY rating ASC;

SELECT title, rating FROM book ORDER BY rating DESC;

SELECT title, rating FROM book ORDER BY genre ASC, rating DESC;

SELECT title, rating FROM book ORDER BY rating DESC LIMIT 3;

SELECT title, pub_year FROM book ORDER BY pub_year ASC LIMIT 5;

SELECT genre, COUNT(*) AS book_count FROM book GROUP BY genre;

SELECT genre, SUM(pages) as total_pages, AVG(rating) AS avg_rating FROM book GROUP BY genre;

SELECT genre, COUNT(*) AS book_count FROM book GROUP BY genre HAVING COUNT(*)>2;

SELECT genre, AVG(rating) AS avg_rating FROM book GROUP BY genre HAVING AVG(rating)>5.5