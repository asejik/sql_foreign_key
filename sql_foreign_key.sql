create table users (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100) UNIQUE,
	password VARCHAR (200),
	date_created TIMESTAMP NOT NULL,
	last_login TIMESTAMP
)

insert into users(first_name, last_name, email, password, date_created)
values ('Sogo', 'Ayenigba', 'asejik@gmail.com', 'sogo1234', NOW())

select * from users

create table allergies(
	id SERIAL PRIMARY KEY,
	allergy VARCHAR(50)
)

create table user_allergies (
	id SERIAL PRIMARY KEY,
	user_id VARCHAR(50) NOT NULL,
	allergy_id VARCHAR(50) NOT NULL,
	FOREIGN KEY (user_id, allergy_id) REFERENCES (users, allergies)
)