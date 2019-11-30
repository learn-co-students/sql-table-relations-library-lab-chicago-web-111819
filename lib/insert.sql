-- 2 series
INSERT INTO series(title, author_id, subgenre_id) VALUES
("Series 1", 2, 1), ("Series 2", 1, 2);

-- 2 sub-genres
INSERT into subgenres(name) VALUES ("Sub-genre 1"), ("Sub-genre 2");

-- 2 authors
INSERT INTO authors(name) VALUES ("Author 1"), ("Author 2");

-- 3 books in each series
INSERT INTO books(title, year, series_id) VALUES
("Book 1", 1980, 2), ("Book 2", 1989, 2), ("Book 3", 1970, 2),
("Book 1", 2000, 1), ("Book 2", 1999, 1), ("Book 3", 2012, 1);

-- 8 characters
-- 4 characters in each series
-- of each of those 4, make 2 in all of the books in a series, and 2 in just 1 book in a series
INSERT INTO characters (name, motto, species, author_id) VALUES
("Lady", "Woof Woof", "direwolf", 1),
("Tyrion Lannister", "A Lannister always pays his debts", "human", 1),
("Daenerys Targaryen", "If I look back I am lost", "human", 1),
("Eddard Stark", "Winter is coming", "human", 1);

INSERT INTO characters (name, motto, species, author_id) VALUES
("Character One", "motto one", "cylon", 2),
("Character Two", "motto two", "human", 2),
("Character Three", "motto three", "cylon", 2),
("Character Four", "motto four", "cylon", 2);

INSERT INTO character_books (book_id, character_id) VALUES
(1, 1), (1, 2), (2, 2), (3, 2),
(1, 3), (2, 3), (3, 3), (1, 4);

INSERT INTO character_books (book_id, character_id) VALUES 
(4, 5), (4, 6), (5, 6), (6, 6), 
(4, 7), (5, 7), (6, 7), (4, 8);
