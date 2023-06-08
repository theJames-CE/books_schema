-- Query #1: Create 5 different users: Jane Amsden, Emily Dixon, Theodore Dostoevsky, William Shapiro, Lao Xiu
INSERT INTO users (first_name, last_name) VALUES ('Jane', 'Amsden'), ('Emily', 'Dixon'), ('Theodore', 'Dostoevsky'), ('William', 'Shapiro'), ('Lao', 'Xiu');

-- Query #2: Create 5 books with the following names: C Sharp, Java, Python, PHP, Ruby
INSERT INTO books (title) VALUES ('C Sharp'), ('Java'), ('Python'), ('PHP'), ('Ruby');

-- Query #3: Change the name of the C Sharp book to C#
UPDATE books SET title = 'C#' WHERE id = 1;

-- Query #4: Change the first name of the 4th user to Bill
UPDATE users SET first_name = 'Bill' WHERE id = 4;

-- Query #5: Have the first user favorite the first 2 books
INSERT INTO favorites (user_id, book_id) VALUES (1, 1), (1, 2);

-- Query #6: Have the second user favorite the first 3 books
INSERT INTO favorites (user_id, book_id) VALUES (2, 1), (2, 2), (2, 3);

-- Query #7: Have the third user favorite the first 4 books
INSERT INTO favorites (user_id, book_id) VALUES (3, 1), (3, 2), (3, 3), (3, 4);

-- Query #8: Have the fourth user favorite all the books
 INSERT INTO favorites (user_id, book_id) VALUES (4, 1), (4, 2), (4, 3), (4, 4), (4, 5);

-- Query #9: Retrieve all the users who favorited the 3rd book
SELECT u.first_name, last_name
FROM users u
JOIN favorites f ON u.id = f.user_id
WHERE f.book_id = 3;

-- Query #10: Remove the first user of the 3rd book's favorites
DELETE FROM favorites WHERE user_id = 1 AND book_id = 3;

-- Query #11: Have the 5th user favorite the 2nd book
INSERT INTO favorites (user_id, book_id) VALUES (5, 2);

-- Query #12: Find all the books that the 3rd user favorited
SELECT b.title
FROM books b
JOIN favorites f ON b.id = f.book_id
WHERE f.user_id = 3;

-- Querey #13: Find all the users that favorited to the 5th book
SELECT u.first_name, last_name
FROM users u
JOIN favorites f ON u.id = f.user_id
WHERE f.book_id = 5;
