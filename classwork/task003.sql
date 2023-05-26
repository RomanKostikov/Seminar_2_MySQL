USE seminar_2;
-- -- CREATE TABLE - создает базу данных
create table movie(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    MovieName VARCHAR(100) NOT NULL,
    MovieYear DATE NOT NULL,
    Duration INT NOT NULL,
    MovieDescription TEXT NOT NULL
);
INSERT movie (MovieName, MovieYear, Duration, MovieDescription) 
VALUES
("Harry Potter", "2001-12-01", 152, "Movie about Harry Potter"),
("The Green Mile", "2001-12-01", 188, "Green Mil"),
("Forres Gump", "2001-12-01", 142, "Movie");

RENAME TABLE movie TO new_movie;

ALTER TABLE new_movie ADD COLUMN Rating FLOAT NOT NULL AFTER Duration;

-- ALTER TABLE new_movie DROP COLUMN Rating;

SELECT * FROM new_movie;

CREATE TABLE test_table (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_movie INT NOT NULL
);

ALTER TABLE test_table ADD foreign key (id_movie) references new_movie(id);

truncate table new_movie;