
    Код Sql с описанием.

-- CREATE TABLE EMPLOYEE - Создание таблицы с именем LIST
-- Даллее в круглых скобках () пишем название стоблцов и тпи данных.
CREATE TABLE LIST (
  id INT PRIMARY KEY, -- primary key - Указали, что id INT это внешний ключ
  FIO TEXT, -- FIO - столбец , TEXT - строка с заранее известной длиной,(ещё есть varchar(n) - это строка на n символов)
  Birthday TEXT, -- Поле Д/Р в формате строчке
  Status TEXT NOT NULL, -- NOT NULL Указывает, что в поле должна быть информация обязательно, т.е. пустым быть не может
  Phone INT, -- INT - тип данных целое число
  Comment TEXT,
  Adress VARCHAR(45), -- varchar(45) - длина строки максимум 45
  Bank_group TEXT
);

-- insert INTO - имя_таблицы(значения)
INSERT INTO LIST VALUES (1, "Иванов И. И.", "2/12/1990", "женат", 126, "интернет", "Можга", "Работа");
INSERT INTO LIST VALUES (4, "Петров П. П.",	"4/23/1983",	"женат",	234, "личный",	"Москва",	"Родня");

-- fetch 
SELECT * FROM LIST;

SELECT "Вывод столбца ФИО и адресс: "; -- таким способом можно вывести любой текст между запросами.

SELECT FIO, Adress
FROM LIST;

SELECT "";

SELECT FIO, Phone, Comment 
FROM LIST
where Bank_group = "Родня";