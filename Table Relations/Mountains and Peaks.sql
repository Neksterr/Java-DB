CREATE TABLE mountains (
id INT AUTO_INCREMENT PRIMARY KEY,
name varchar(50) not NULL
);
CREATE TABLE peaks(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50),
mountain_id INT,
CONSTRAINT fk_mountain_peaks
foreign key (mountain_id)
references mountains(id)
);