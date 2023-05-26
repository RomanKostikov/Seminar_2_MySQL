USE seminar_2;

-- 1. Используя операторы языка SQL, создайте табличку “sales”. Заполните ее данными

DROP TABLE sales;

CREATE TABLE sales(
	id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE NOT NULL,
    bucket INT NOT NULL
); 

INSERT INTO sales(order_date, bucket) VALUES
('2023-05-25', 270),
('2023-05-24', 260),
('2023-05-23', 60),
('2023-05-22', 170),
('2023-05-22', 360);

SELECT * FROM sales;

-- 2. Сгруппируйте значений количества в 3 сегмента — меньше 100, 100-300 и больше 300.

ALTER TABLE sales ADD orders VARCHAR(45);

UPDATE sales SET orders=
CASE
	WHEN bucket > 300 THEN 'Большой заказ'
	WHEN bucket > 99 THEN 'Средний заказ'
	ELSE 'Маленький заказ'
END;

SELECT * FROM sales WHERE orders = "Большой заказ";
SELECT * FROM sales WHERE orders = "Средний заказ";
SELECT * FROM sales WHERE orders = "Маленький заказ";

-- 3. a) Создайте таблицу “orders”, заполните ее значениями

DROP TABLE orders;

CREATE TABLE orders
(
	order_id INT PRIMARY KEY AUTO_INCREMENT,
    employeeid VARCHAR(30) NOT NULL,
    amount DECIMAL(8,5) DEFAULT(0.00),
    order_status VARCHAR(45) NOT NULL
);

INSERT INTO orders (employeeid, amount, order_status) VALUES 
('E03', 15.00, 'OPEN'),
('E01', 25.50, 'OPEN'),
('E05', 100.70, 'CLOSED'),
('E02', 22.18, 'OPEN'),
('E04', 9.50, 'CANCELLED'),
('E04', 99.99, 'OPEN');

SELECT * FROM orders;

-- b) Покажите “полный” статус заказа, используя оператор CASE

SELECT order_id, order_status, 
CASE 
	WHEN order_status = 'OPEN' THEN 'Order is in open state.'
	WHEN order_status = 'CLOSED' THEN 'Order is closed.'
	WHEN order_status = 'CANCELLED' THEN 'Order is cancelled.'
    ELSE 'Status unknown'
    END AS order_summary
FROM orders;

-- 4. Чем NULL отличается от 0?

/*
0 - это значение которое хранится в определенной "ячейке" памяти
null - отсутствие какого-либо значения (пустота).
*/