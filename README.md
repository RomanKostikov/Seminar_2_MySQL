# Seminar_2. SQL – создание объектов, простые запросы выборки
## Classwork
Task001_002
1. уникальный идентификатор фильма,
2. название фильма
3. год выхода
4. длительность фильма в минутах
5. сюжетная линия, небольшое описание фильма
Все поля имеют ограничение NOT NULL. Первичный ключ PRIMARY KEY – поле id.

Task003
1.	Переименование делается с помощью команды RENAME TABLE.
USE db;RENAME TABLE old_name TO new_name;
2.	Для добавления нового столбца нам понадобится команда ADD.
ALTER TABLE cinema
ADD Language VARCHAR(50) NULL;

3.	Чтобы удалить столбец в MySQL используется ALTER TABLE с DROP COLUMN:
ALTER TABLE cinema
DROP COLUMN Language;

20:45
4.	С помощью DROP TABLE можно полностью удалить таблицу из базы данных:
DROP TABLE cinema;

5.	Для добавления  внешнего ключа воспользуемся уже знакомой нам командой ADD:
ALTER TABLE cinema
ADD FOREIGN KEY(producer_id) REFERENCES producer(Id);

6.	Если надо очистить таблицу от данных используется команда TRUNCATE TABLE:  
TRUNCATE TABLE cinema;

task004:
A) В зависимости от поля “grade”, установите еще один столбец с именем class в зависимости от значений: A++ – DISTINCTION,A+ – FIRST CLASS, A – SECOND CLASS, B+ – SECOND CLASS, C+ – THIRD CLASS, ALL OTHERS – FAIL
B) Total_marks > 450 – «ПЕРВЫЙ КЛАСС С ОТЛИЧИЕМ»
Total_marks от 400 до 450 – «ПЕРВЫЙ КЛАСС»
Total_marks от 350 до 400 – «ВТОРОЙ КЛАСС»
Total_marks от 300 до 350 – «ТРЕТИЙ КЛАСС»
В противном случае - НЕУДАЧА

## Homework
1. Используя операторы языка SQL, создайте табличку “sales”. Заполните ее данными
2. Сгруппируйте значений количества в 3 сегмента — меньше 100, 100-300 и больше 300.
3. Создайте таблицу “orders”, заполните ее значениями. Покажите “полный” статус заказа, используя оператор CASE
4. Чем NULL отличается от 0?