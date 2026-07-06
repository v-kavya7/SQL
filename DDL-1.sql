CREATE DATABASE perfect;
USE perfect;
CREATE TABLE persons(
id INT NOT NULL,
person_name VARCHAR(20) NOT NULL,
birth_date DATE,
phone VARCHAR(15) NOT NULL,
CONSTRAINT pk_persons PRIMARY KEY (id)
);
SELECT * FROM persons;
ALTER TABLE persons
ADD email VARCHAR(50) NOT NULL;
ALTER TABLE persons
DROP COLUMN phone;
DROP TABLE persons;
