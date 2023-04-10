SELECT Books.ISBN, Books.Title, Books.Price, Books.Type, Authors.Author_id, Authors.First_name, Authors.Last_name
FROM Books
INNER JOIN Written W
ON Books.ISBN = W.ISBN
INNER JOIN Authors
ON Authors.Author_id = W.Au_id
SELECT Books.ISBN, Books.Title, Books.Price, Books.Type, Publishers.P_id, Publishers.P_name
FROM Books
INNER JOIN Publishers
ON Books.P_id = Publishers.P_id