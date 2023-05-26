USE seminar_2;
-- -- CREATE TABLE - создает базу данных
create table movie(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    MovieName VARCHAR(100) NOT NULL,
    MovieYear DATE NOT NULL,
    Duration INT NOT NULL,
    MovieDescription TEXT NOT NULLproducts
);
INSERT movie (MovieName, MovieYear, Duration, MovieDescription) 
VALUES
("Harry Potter", "2001-12-01", 152, "Movie about Harry Potter"),
("The Green Mile", "2001-12-01", 188, "Green Mil"),
("Forres Gump", "2001-12-01", 142, "Movie");
SELECT * FROM movie
