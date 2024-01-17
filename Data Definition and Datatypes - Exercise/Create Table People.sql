CREATE TABLE people(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(200) NOT NULL,
picture BLOB,
height DOUBLE(6,2),
weight  DOUBLE (6,2),
gender CHAR(1) NOT NULL,
birthdate DATE NOT NULL,
biography BLOB NULL
);
INSERT INTO people(name,picture,height,weight,gender,birthdate,biography) VALUES
('Ivan' , 'test', 1.89,95.5, 'm', '1976-05-04','test'),
('MAriq' , 'test', 1.60,95.5, 'f', '1976-05-04','test'),
('Georgi' , 'test', 1.79,55, 'm', '1976-05-04','test'),
('Koko' , 'test', 1.69,70, 'm', '1976-05-04','test'),
('Vanq' , 'test', 1.70,95.5, 'f', '1976-05-04','test');
SELECT * FROM people;