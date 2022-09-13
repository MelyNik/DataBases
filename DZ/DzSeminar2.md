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
INSERT INTO LIST VALUES (10, "Борисов Б.Б.", "8/16/1989",	"холост",	723, "рабочий",	"Москва",	"Работа");

CREATE TABLE People (
  id INT PRIMARY KEY,
  FIO TEXT,
  Birthday TEXT,
  Status TEXT
);

INSERT INTO People VALUES (1,	"Иванов И. И.",	"2/12/1990",	"женат");
INSERT INTO People VALUES (2,	"Иванов И. И.",	"9/18/2001",	"холост");
INSERT INTO People VALUES (3,	"Петров П. П.",	"4/23/1983",	"женат");
INSERT INTO People VALUES (4,	"Васильев В. В.",	"5/21/1998",	"холост");
INSERT INTO People VALUES (25,	"Кузьмин К.К.",	"5/21/2020",	"холост");

CREATE TABLE Addresses(
  Whose_address INT,
  Adress TEXT,
  Comment TEXT
);

INSERT INTO Addresses VALUES (1,	"Можга",	"Место рождения");
INSERT INTO Addresses VALUES (1,	"Казань",	"По прописке");
INSERT INTO Addresses VALUES (1,	"Москва",	"Рабочий");
INSERT INTO Addresses VALUES (2,	"Санкт-Петербург",	"По прописке");
INSERT INTO Addresses VALUES (3,	"Москва",	"По прописке");
INSERT INTO Addresses VALUES (4,	"Белгород",	"По прописке");
INSERT INTO Addresses VALUES (5,	"Уфа",	"По прописке");
INSERT INTO Addresses VALUES (6,	"Сочи",	"По прописке");
INSERT INTO Addresses VALUES (7,	"Киров",	"Рабочий");
INSERT INTO Addresses VALUES (8,	"Владивосток",	"Место рождения");
INSERT INTO Addresses VALUES (9,	"Рязань",	"Рабочий");
INSERT INTO Addresses VALUES (10,	"Хабаровск",	"Место рождения");

select FIO, Birthday, Adress
from LIST;

select "";

select FIO, Status
from LIST
where Adress = "Можга";

select "";

select FIO
from LIST
where Adress = "Москва" and Bank_group = "Работа";

select "";

select Birthday
from LIST
where Adress = "Москва" OR Bank_group = "Работа";

select "";

select *
from People
inner join Addresses
on People.id=Addresses.Whose_address;

select "";

select *
from People
left join Addresses
on People.id=Addresses.Whose_address;

select "";

select *
from People
right join Addresses
on People.id=Addresses.Whose_address;

select "";

select *
from People
FULL JOIN Addresses
on People.id=Addresses.Whose_address;

select "";

select FIO, Adress, Comment
from People
right join Addresses
on People.id=Addresses.Whose_address;

