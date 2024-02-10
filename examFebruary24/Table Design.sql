CREATE TABLE continents (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(40) NOT NULL UNIQUE
);
CREATE TABLE countries (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(40) NOT NULL UNIQUE,
country_code VARCHAR(10) not NULL UNIQUE,
continent_id INT NOT NULL,
CONSTRAINT fk_continent_id FOREIGN KEY (continent_id)
REFERENCES continents(id)
);
CREATE TABLE preserves (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255) NOT NULL UNIQUE,
latitude DECIMAL(9,6),
longitude DECIMAL(9,6),
area INT,
type VARCHAR(20),
established_on DATE
);
CREATE TABLE positions(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(40) NOT NULL UNIQUE,
description text,
is_dangerous TINYINT(1)
);
CREATE TABLE workers (
id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(40) NOT NULL,
last_name VARCHAR(40) NOT NULL,
age INT,
personal_number VARCHAR(20) NOT NULL UNIQUE,
salary DECIMAL(19,2),
is_armed TINYINT(1) NOT NULL,
start_date DATE,
preserve_id INT,
position_id INT,
CONSTRAINT fk_preserve_id FOREIGN KEY (preserve_id)
REFERENCES preserves(id),
CONSTRAINT fk_position_id FOREIGN KEY (position_id)
REFERENCES positions(id)
);
CREATE TABLE countries_preserves (
country_id INT,
preserve_id INT,
CONSTRAINT fk_preserve_id_c FOREIGN KEY (preserve_id)
REFERENCES preserves(id),
CONSTRAINT fk_country_id FOREIGN KEY (country_id)
REFERENCES countries(id)
);