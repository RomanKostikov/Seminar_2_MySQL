-- Необходимо создать таблицу студентов:
create table grades(
	student_id INT primary key auto_increment,
    total_marks INT NOT null,
    grade varchar(10)
    );

alter table grades add column class varchar(45);
set SQL_SAFE_UPDATES = 0;
INSERT into grades (total_marks, grade) VALUES
(450, "A"),
(480, "A+"),
(490, "A++"),
(440, "B+"),
(400, "C+"),
(380, "C"),
(250, "D"),
(200, "E");


	update grades set class=
	CASE WHEN grades.grade = "A++" THEN "DISTINCTION"
	WHEN grades.grade = "A+" THEN "FIRST CLASS"
	WHEN grades.grade = "A" THEN "SECOND CLASS"
	WHEN grades.grade = "B+" THEN "SECOND CLASS"
	WHEN grades.grade = "C+" THEN "THIRD CLASS"
    ELSE "FAIL"
    END;
    
	update grades set class=
	CASE WHEN grades.total_marks > 450 THEN "ПЕРВЫЙ КЛАСС С ОТЛИЧИЕМ"
	WHEN grades.total_marks > 399 THEN "ПЕРВЫЙ КЛАСС"
	WHEN grades.total_marks > 349 THEN "ВТОРОЙ КЛАСС"
	WHEN grades.total_marks > 299 THEN "ТРЕТИЙ КЛАСС"
    ELSE "НЕУДАЧА"
    END;    
select * from grades;
select total_marks, if(total_marks > 400, 'Вы отличник', 'Вы двоечник') AS result FROM grades;  