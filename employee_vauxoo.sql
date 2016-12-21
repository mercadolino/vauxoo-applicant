-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee_department(
  id SERIAL PRIMARY KEY,
  name VARCHAR (50) UNIQUE NOT NULL,
  descriptioniption text
);

CREATE TABLE employee(
  id serial PRIMARY KEY,
  first_name VARCHAR (50) NOT NULL,
  last_name VARCHAR (50) NOT NULL,
  id_department INTEGER NOT NULL,
  id_boss INTEGER NOT NULL,
  FOREIGN KEY (id_department) REFERENCES employee_department
      ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (id_boss) REFERENCES employee
      ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE employee_hobby(

  id SERIAL PRIMARY KEY,
  name VARCHAR (50) UNIQUE NOT NULL,
  description text
);

CREATE TABLE employee_hobby_ref(

  id_employee SERIAL,
  id_employee_hobby SERIAL,

  FOREIGN KEY (id_employee) REFERENCES employee
  ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (id_employee_hobby) REFERENCES employee_hobby
  ON DELETE CASCADE ON UPDATE CASCADE,

  PRIMARY KEY (id_employee, id_employee_hobby)
);

INSERT INTO employee_department (name,description) VALUES ('HR', 'description1');
INSERT INTO employee_department (name,description) VALUES ('Agricoltura', 'description2');
INSERT INTO employee_department (name,description) VALUES ('Amministrazione', 'description3');
INSERT INTO employee_department (name,description) VALUES ('Acquisti', 'description4');
INSERT INTO employee_department (name,description) VALUES ('Vendite', 'description5');
INSERT INTO employee_department (name,description) VALUES ('Marketing', 'description6');

INSERT INTO employee (first_name, last_name, id_department, id_boss) VALUES ('Demian', 'Rihs','4','1');
INSERT INTO employee (first_name, last_name, id_department, id_boss) VALUES ('Francesco', 'Apagno','1','1');
INSERT INTO employee (first_name, last_name, id_department, id_boss) VALUES ('Mark', 'Baumann','2','1');
INSERT INTO employee (first_name, last_name, id_department, id_boss) VALUES ('Francesco', 'Prova','3','1');

INSERT INTO employee_hobby (name,description) VALUES ('Photography', 'Love to take pictures');
INSERT INTO employee_hobby (name,description) VALUES ('Astronomy', 'Love to observe the night sky');
INSERT INTO employee_hobby (name,description) VALUES ('Hiking', 'Love to climb mountains');

INSERT INTO employee_hobby_ref (id_employee,id_employee_hobby) VALUES ('1','1');
INSERT INTO employee_hobby_ref (id_employee,id_employee_hobby) VALUES ('1','2');
INSERT INTO employee_hobby_ref (id_employee,id_employee_hobby) VALUES ('2','1');
INSERT INTO employee_hobby_ref (id_employee,id_employee_hobby) VALUES ('2','2');
INSERT INTO employee_hobby_ref (id_employee,id_employee_hobby) VALUES ('3','1');
INSERT INTO employee_hobby_ref (id_employee,id_employee_hobby) VALUES ('3','2');
INSERT INTO employee_hobby_ref (id_employee,id_employee_hobby) VALUES ('4','1');
INSERT INTO employee_hobby_ref (id_employee,id_employee_hobby) VALUES ('4','2');
