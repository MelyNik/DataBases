-- CREATE TABLE test - создание таблички с именем test
-- (наименование столбца и тип данных)
CREATE TABLE LIST (
  id INT PRIMARY KEY,-- сурротгатный ключ , primary key - внешний ключ
  FIO TEXT, -- "TEXT" - строчка с заранее известной длиной, VARCHAR(N) - строчка на N символов
  birthday TEXT, -- Поле "Д/р" в формате строчки
  status TEXT NOT NULL, -- В вашем поле должна быть обязательно информация
  phone INT, -- "INT" - целое число
  comment TEXT,
  adress VARCHAR(45), -- VARCHAR(45) - строка на 45 символов
  bank_group TEXT -- Последнее поле, поэтому запятая в конце не ставится
);
-- Чтобы заполнить табличку, используется команда insert
-- INSERT INTO имя_таблицы VALUES (значение1, значение2)
INSERT INTO LIST VALUES (1,"Иванов И. И.",	"2/12/1990",	"женат",
126,	"интернет",	"Можга",	"Работа");
INSERT INTO LIST VALUES (2, "Петров П. П.",	"4/23/1983",	"женат",	
234, "личный", 	"Москва",	"Родня");
INSERT INTO LIST VALUES (3, "Васильев В. В.", 	"5/21/1998",	
"холост",	456,	"личный",	"Белгород",	"Друзья");
-- fetch - SELECT - выбор данных
-- 1 запрос: Выбор всех столбцов и печать на экран
SELECT * FROM LIST; 

-- Отделим запросы друг от друга
SELECT "";

-- 2 запрос: Вывод ограниченного количества столбцов:
SELECT FIO, adress FROM LIST;

-- Отделим запросы друг от друга
SELECT "";

-- 3 запрос.  Условие: WHERE
-- Выведутся все люди, которые являются нам "родными"
SELECT FIO, phone, comment
FROM LIST
WHERE bank_group = "Родня";

-- Отделим запросы друг от друга
SELECT "";

-- 4 запрос: сужает выбопку, то есть, делает ее меньше
SELECT FIO, status, bank_group
FROM LIST
WHERE status = "женат" AND bank_group = "Работа";


-- Отделим запросы друг от друга
SELECT "";

-- 5 запрос: вставим вместо "AND"(логического "И") оператор логического "ИЛИ" - OR
SELECT FIO, status, bank_group
FROM LIST
WHERE status = "женат" OR bank_group = "Работа" OR adress = "Белгород";






