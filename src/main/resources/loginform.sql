# usuń bazę danych jeśli istnieje
DROP DATABASE IF EXISTS loginform;
# utwórz bazę danych i ustaw kodowanie znaków na polskie znaki
CREATE DATABASE loginform CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci;
# użyj bazdę danych loginform w schema
USE loginform;

# tworzenie bazy danych jeśli nie istnieje
CREATE TABLE IF NOT EXISTS user (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    registration_date DATETIME NOT NULL,
    password VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS user_role (
    username VARCHAR(50) NOT NULL,
    role_name VARCHAR(20) NOT NULL DEFAULT 'USER',
#     klucz główny
    PRIMARY KEY (username, role_name),
#     klucz obcy z referencją na tabelę user i pole username
    FOREIGN KEY(username) REFERENCES user(username)
);