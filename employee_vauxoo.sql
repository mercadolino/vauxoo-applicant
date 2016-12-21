-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee(
  id serial PRIMARY KEY,
  first_name VARCHAR (50) NOT NULL,
  last_name VARCHAR (50) NOT NULL,
  id_department integer NOT NULL,
  FOREIGN KEY (id_department) REFERENCES employee_department
      ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE employee_department(
  id SERIAL  PRIMARY KEY,
  name VARCHAR (50) UNIQUE NOT NULL,
  descr text
);

INSERT INTO employee_department (name,descr) VALUES ('HR', 'descr1');
INSERT INTO employee_department (name,descr) VALUES ('Agricoltura', 'descr2');
INSERT INTO employee_department (name,descr) VALUES ('Amministrazione', 'descr3');
INSERT INTO employee_department (name,descr) VALUES ('Acquisti', 'descr4');
INSERT INTO employee_department (name,descr) VALUES ('Vendite', 'descr5');
INSERT INTO employee_department (name,descr) VALUES ('Marketing', 'descr6');

INSERT INTO employee (first_name, last_name, id_department) VALUES ('Demian', 'Rihs','4');
INSERT INTO employee (first_name, last_name, id_department) VALUES ('Francesco', 'Apagno','1');
INSERT INTO employee (first_name, last_name, id_department) VALUES ('Mark', 'Baumann','2');
INSERT INTO employee (first_name, last_name, id_department) VALUES ('Francesco', 'Prova','3');
