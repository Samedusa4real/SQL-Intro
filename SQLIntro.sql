CREATE DATABASE Market

USE Market

CREATE TABLE Products
(
	Id Int,
	Name NVARCHAR(20)
)

ALTER TABLE Products
ADD Price Int

INSERT INTO Products(Id,Name,Price)
VALUES
(1,'T-shirt',45),
(2,'Papaq',15),
(3,'Salvar',55),
(4,'Airmax',125),
(5,'Makasin',15),
(6,'Sweatshirt',65),
(7,'Sortik',45),
(8,'Cekelek',10),
(9,'Gozluk',20),
(10,'Corab',3)

SELECT * FROM Products
WHERE Price>10

UPDATE Products
SET Name='Uptempo'
WHERE Name='Airmax'

SELECT * FROM Products
WHERE Name LIKE '%a%'

SELECT * FROM Products
WHERE Price BETWEEN 100 AND 500

UPDATE Products
SET Price = 100
WHERE Price<100

ALTER TABLE Products
ALTER COLUMN Name NVARCHAR(20) NOT NULL

ALTER TABLE Products
ALTER COLUMN Id INT PRIMARY KEY

ALTER TABLE Products
ADD CONSTRAINT CK_NameLength CHECK (LEN(Name) >= 2)

INSERT INTO Products(Id,Name,Price)
VALUES
(11,'Test',75)