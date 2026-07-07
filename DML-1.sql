INSERT INTO persons(id,person_name,birth_date,email)
VALUES 
(1,'kavya','2005-05-11','kavya@gmail.com'),
(2,'panneru','2004-04-21','panneru@gmail.com');
INSERT INTO persons(id,person_name,birth_date,email,phone)
VALUES 
(4,'ka','2005-05-11','ka@gmail.com',837401),
(5,'pan','2004-04-21','pan@gmail.com',351486);
INSERT INTO persons(id,person_name,email)
VALUES 
(3,'Anu','anu@gmail.com');
UPDATE persons 
SET person_name='pk',
    email='pk@gmail.com'
WHERE id=2;
UPDATE persons
SET birth_date= '2004-01-21'
WHERE id=3;
UPDATE persons
SET  phone=92731792
WHERE id=1;
SET SQL_SAFE_UPDATES=0;
UPDATE persons
SET phone=0
WHERE phone IS NULL;
SET SQL_SAFE_UPDATES=1;
DELETE FROM persons
WHERE id>3;
