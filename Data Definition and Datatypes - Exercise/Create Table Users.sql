CREATE TABLE users (
id INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(30) UNIQUE NOT NULL,
password VARCHAR(26) NOT NULL,
profile_picture BLOB,
last_login_time DATETIME,
is_deleted BOOL
);
INSERT INTO users(username,password,profile_picture,last_login_time,is_deleted) VALUES
('vanq' , '123', 'test', NOW(),false),
('alex' , '123', 'test', NOW(),false),
('kris' , '123', 'test', NOW(),true),
('lili' , '123', 'test', NOW(),false),
('meri' , '123', 'test',NOW(),false);