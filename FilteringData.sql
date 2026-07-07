SELECT * FROM persons;
SELECT person_name
FROM persons
WHERE email='kavya@gmail.com';
SELECT person_name
FROM persons
WHERE phone=0;
SELECT person_name
FROM persons
WHERE phone=0 AND id=3;
SELECT person_name
FROM persons
WHERE phone=0 OR id=3;
SELECT person_name
FROM persons
WHERE NOT id=1;
SELECT * 
FROM persons
WHERE id BETWEEN 1 AND 2;
SELECT * 
FROM persons
WHERE email IN('kavya@gmail.com','anu@gmail.com');
SELECT * 
FROM persons
WHERE email IN('pk@gmail.com');
SELECT * 
FROM persons
WHERE person_name LIKE '%ya';
SELECT * 
FROM persons
WHERE person_name LIKE 'a%u';
SELECT * 
FROM persons
WHERE email LIKE '%gmail.com';
SELECT * 
FROM persons
WHERE email LIKE '__@g%';
SELECT * 
FROM persons
WHERE email LIKE '_avya@g%';
