/* Задача 1
Создайте таблицу с мобильными телефонами, используя графический интерфейс. 
Необходимые поля таблицы: product_name (название товара), manufacturer (производитель), 
product_count (количество), price (цена). Заполните БД произвольными данными.
*/
-- создание таблицы mobile
CREATE TABLE `hwork1`.`mobile` (
  `idmobile` INT NOT NULL AUTO_INCREMENT,
  `product_name` VARCHAR(45) NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `product_count` INT NOT NULL,
  `price` FLOAT UNSIGNED NOT NULL,
  PRIMARY KEY (`idmobile`),
  UNIQUE INDEX `product_name_UNIQUE` (`product_name` ASC) VISIBLE);
-- наполнение нужными данными
INSERT INTO `hwork1`.`mobile` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('mobile Nokia 6010', 'Nokia Corporation', '1', '2500');
INSERT INTO `hwork1`.`mobile` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('smartphone Samsung Galaxi A73', 'Samsung', '0', '32500');
INSERT INTO `hwork1`.`mobile` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('smartphone Huawei Mate', 'Huawei Technologies Co.', '5', '63070');
INSERT INTO `hwork1`.`mobile` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('iPhone 14 Pro', 'Apple', '2', '156900');
INSERT INTO `hwork1`.`mobile` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('mobile Panasonic TU456', 'Panasonic', '2', '3200');
INSERT INTO `hwork1`.`mobile` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('mobile Philips Xenium E2602', 'Philips', '12', '3690');
INSERT INTO `hwork1`.`mobile` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('smartphone Huawei nova Y70', 'Huawei Technologies Co.', '1', '12900');
INSERT INTO `hwork1`.`mobile` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('smartphone Samsung Galaxy A13', 'Samsung', '6', '10990');
INSERT INTO `hwork1`.`mobile` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('smartphone Samsung Galaxy Z Fold 4', 'Samsung', '1', '129900');
INSERT INTO `hwork1`.`mobile` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('smartphone Samsung Galaxy A03 Core', 'Samsung', '1', '6200');
INSERT INTO `hwork1`.`mobile` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('iPhone 11', 'Apple', '2', '39500');
INSERT INTO `hwork1`.`mobile` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('REALME 8', 'Oppo', '2', '19900');
INSERT INTO `hwork1`.`mobile` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('REALME 8i', 'Oppo', '7', '14990');

/* Задача 2 
Напишите SELECT-запрос, который выводит название товара, производителя и цену для товаров, количество которых превышает 2.
*/
# выборки данных
USE hwork1;
SELECT * FROM mobile;

SELECT product_name, manufacturer, price
FROM mobile
WHERE product_count > "2";

/* Задача 3 
Выведите SELECT-запросом весь ассортимент товаров марки “Samsung”
*/
# выборки данных
USE hwork1;
SELECT * FROM mobile;

SELECT product_name, product_count, price
FROM mobile
WHERE manufacturer = "Samsung";

/* Задача 4*
С помощью SELECT-запроса с оператором LIKE / REGEXP найти:
*/
# 4.1* Товары, в которых есть упоминание "Iphone"
# выборки данных
USE hwork1;

SELECT * FROM mobile
WHERE product_name REGEXP "IPhone";

# 4.2* Товары, в которых есть упоминание "Samsung"
# выборки данных
USE hwork1;

SELECT * FROM mobile
WHERE product_name REGEXP "Samsung";

# 4.3*  Товары, в названии которых есть ЦИФРЫ
# выборки данных

USE hwork1;

SELECT * FROM mobile
WHERE product_name REGEXP "[0-9999]";

# 4.4*  Товары, в названии которых есть ЦИФРА "8" 
# выборки данных
USE hwork1;

SELECT * FROM mobile
WHERE product_name REGEXP "[8]";