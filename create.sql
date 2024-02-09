-- Adatbázis létrehozása
create database if not exists diary
default character set utf8
collate utf8_hungarian_ci;

--Felhasználó létrehozása
grant all privileges
on diary.*
to diary@localhost
identified by 'titok';

-- Csatlakozás az adatbázishoz
use diary;

-- Táblák létrehozása
create table if not exists students(
	id int not null primary key auto_increment, 
	name varchar(50),
    city varchar(50)
);
create table if not exists grades(
	id int not null primary key auto_increment, 
	grade int,
    studentId int
);
