create DATABASE online_store;
use online_store;
CREATE TABLE cities (
    city_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);
CREATE TABLE item_types (
    item_type_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    birthday DATE NOT NULL,
    city_id INT ,
    CONSTRAINT fk_city_id FOREIGN KEY (city_id)
        REFERENCES cities (city_id)
);
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    CONSTRAINT fk_customer_id FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id)
);
CREATE TABLE items (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    item_type_id INT,
    CONSTRAINT fk_item_type_id FOREIGN KEY (item_type_id)
        REFERENCES item_types (item_type_id)
);
CREATE TABLE order_items (
    order_id INT,
    item_id INT,
    CONSTRAINT pk_order_item PRIMARY KEY (order_id , item_id),
    CONSTRAINT fk_order_id FOREIGN KEY (order_id)
        REFERENCES orders (order_id),
    CONSTRAINT fk_item_id FOREIGN KEY (item_id)
        REFERENCES items (item_id)
);
