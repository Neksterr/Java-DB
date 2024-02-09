CREATE DATABASE real_estates;
use real_estates;
CREATE TABLE cities (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(60) NOT NULL UNIQUE
);
CREATE TABLE buyers (
id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(40) NOT NULL,
last_name VARCHAR(40) NOT NULL,
phone VARCHAR(20) NOT NULL UNIQUE,
email VARCHAR(50) NOT NULL UNIQUE,
city_id INT,
CONSTRAINT fk_city_id FOREIGN KEY (city_id)
REFERENCES cities(id)
);
CREATE TABLE property_types (
id INT AUTO_INCREMENT PRIMARY KEY,
type VARCHAR(40) NOT NULL UNIQUE,
description TEXT
);
CREATE TABLE properties(
id INT AUTO_INCREMENT PRIMARY KEY,
address VARCHAR(80) NOT NULL UNIQUE,
price DECIMAL(19,2) not NULL,
area DECIMAL(19,2),
property_type_id INT,
city_id INT,
CONSTRAINT fk_city_id_p FOREIGN KEY (city_id)
REFERENCES cities(id),
CONSTRAINT fk_property_type_id FOREIGN KEY (property_type_id)
REFERENCES property_types(id)
);
create TABLE property_transactions (
id INT AUTO_INCREMENT PRIMARY KEY,
property_id INT,
buyer_id INT,
transaction_date DATE,
bank_name VARCHAR(30),
iban VARCHAR(40) UNIQUE,
is_successful TINYINT(1),
CONSTRAINT fk_property_id_pt FOREIGN KEY (property_id)
REFERENCES properties(id),
CONSTRAINT fk_buyer_id FOREIGN KEY (buyer_id)
REFERENCES buyers(id)
);
CREATE TABLE agents (
id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(40) NOT NULL,
last_name VARCHAR(40) NOT NULL,
phone VARCHAR(20) NOT NULL UNIQUE,
email VARCHAR(50) NOT NULL UNIQUE,
city_id INT,
CONSTRAINT fk_city_id_a FOREIGN KEY (city_id)
REFERENCES cities(id)
);
CREATE table property_offers(
property_id INT,
agent_id INT,
price DECIMAL(19,2),
offer_datetime DATETIME,
CONSTRAINT fk_property_id_po FOREIGN KEY (property_id)
REFERENCES properties(id),
CONSTRAINT fk_agent_id_po FOREIGN KEY (agent_id)
REFERENCES agents(id)
);