/*Схема БД состоит из четырех таблиц:
Product(maker, model, type)
PC(code, model, speed, ram, hd, cd, price)
Laptop(code, model, speed, ram, hd, price, screen)
Printer(code, model, color, type, price)
Таблица Product представляет производителя (maker), номер модели (model) и тип ('PC' - ПК, 'Laptop' - ПК-блокнот или 'Printer' - принтер). Предполагается, что номера моделей в таблице Product уникальны для всех производителей и типов продуктов. В таблице PC для каждого ПК, однозначно определяемого уникальным кодом – code, указаны модель – model (внешний ключ к таблице Product), скорость - speed (процессора в мегагерцах), объем памяти - ram (в мегабайтах), размер диска - hd (в гигабайтах), скорость считывающего устройства - cd (например, '4x') и цена - price (в долларах). Таблица Laptop аналогична таблице РС за исключением того, что вместо скорости CD содержит размер экрана -screen (в дюймах). В таблице Printer для каждой модели принтера указывается, является ли он цветным - color ('y', если цветной), тип принтера - type (лазерный – 'Laser', струйный – 'Jet' или матричный – 'Matrix') и цена - price.*/

--Найдите номер модели, скорость и размер жесткого диска для всех ПК стоимостью менее 500 дол. Вывести: model, speed и hd

SELECT model, speed, hd FROM PC
WHERE price < 500;

--Найдите производителей принтеров. Вывести: maker

SELECT DISTINCT maker FROM product
WHERE type = 'Printer';

--Найдите номер модели, объем памяти и размеры экранов ПК-блокнотов, цена которых превышает 1000 дол.

SELECT model, ram, screen FROM Laptop
WHERE price > 1000;

--Найдите все записи таблицы Printer для цветных принтеров.

SELECT * From Printer
WHERE color = 'y';

--Найдите номер модели, скорость и размер жесткого диска ПК, имеющих 12x или 24x CD и цену менее 600 дол.

SELECT model, speed, hd FROM Pc
WHERE CD IN ('12x', '24x') and price < 600;

--Для каждого производителя, выпускающего ПК-блокноты c объёмом жесткого диска не менее 10 Гбайт, найти скорости таких ПК-блокнотов. Вывод: производитель, скорость.

SELECT DISTINCT Product.maker, Laptop.speed FROM Product
JOIN Laptop on Product.model = Laptop.model
WHERE hd >= 10;

--Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).

SELECT Pc.model, Pc.price FROM Pc
JOIN Product ON Product.model = Pc.model
WHERE maker = 'B'
UNION
SELECT Laptop.model, Laptop.price FROM Laptop
JOIN Product ON Product.model = Laptop.model
WHERE maker = 'B'
UNION
SELECT Printer.model, Printer.price FROM Printer
JOIN Product ON Product.model = Printer.model
WHERE maker = 'B';

--Найдите производителя, выпускающего ПК, но не ПК-блокноты.

SELECT maker FROM Product
WHERE type = 'Pc' AND 
maker NOT IN (SELECT maker FROM Product
WHERE type = 'Laptop')
GROUP BY maker;

--Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker

SELECT maker FROM Product
JOIN Pc ON Product.model = Pc.model
WHERE Speed >= 450
Group BY maker;

--Найдите модели принтеров, имеющих самую высокую цену. Вывести: model, price

SELECT model, price FROM Printer
WHERE price = (SELECT MAX(price)FROM Printer);