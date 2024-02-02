create TABLE clients(
id INT AUTO_INCREMENT PRIMARY KEY,
client_name VARCHAR(100) NOT Null
);



CREATE TABLE projects (
id INT AUTO_INCREMENT PRIMARY KEY,
client_id INT NOT Null UNIQUE,
project_lead_id INT NOT NULL UNIQUE,
CONSTRAINT fk_client_id_client_id FOREIGN KEY (client_id)
REFERENCES clients(id)
on DELETE CASCADE
);
create TABLE employees(
id INT AUTO_INCREMENT PRIMARY KEY ,
first_name VARCHAR(30) NOT Null,
last_name VARCHAR(30) NOT Null,
project_id INT NOT NULL ,
CONSTRAINT fk_project_id FOREIGN KEY (project_id)
REFERENCES projects(id)
on DELETE CASCADE,
CONSTRAINT fk_project_lead_id FOREIGN KEY (id)
REFERENCES projects(project_lead_id)
on DELETE CASCADE
);