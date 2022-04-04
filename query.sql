CREATE TABLE Goods (
	Id INT PRIMARY KEY,
	"Name" TEXT
);

INSERT INTO Goods
VALUES
	(1, 'Saab 9000'),
	(2, 'Saab 9-5'),
	(3, 'Volvo S90'),
	(4, 'Saab 9000 Trinket'),
	(5, 'Volvo S90 Trinket'),
	(6, 'Saab 9-5 User Manual'),
	(7, 'Volvo S90 User Manual'),
	(8, 'Saab 9000 User Manual'),
	(9, 'Garrett TB25');

CREATE TABLE Categories (
	Id INT PRIMARY KEY,
	"Name" TEXT
);

INSERT INTO Categories
VALUES
	(1, 'Book'),
	(2, 'Car'),
	(3, 'Accessory');

CREATE TABLE GoodsCategories (
	GoodId INT,
	CategoryId INT,
	PRIMARY KEY (GoodId, CategoryId)
);

INSERT INTO GoodsCategories
VALUES
	(1, 2),
	(2, 2),
	(3, 2),
	(4, 3),
	(5, 3),
	(6, 1),
	(6, 3),
	(7, 1),
	(7, 3),
	(8, 1),
	(8, 3);

SELECT G."Name", C."Name"
FROM Goods G
LEFT JOIN GoodsCategories GC
	ON G.Id = GC.GoodId
LEFT JOIN Categories C
	ON GC.CategoryId = C.Id;