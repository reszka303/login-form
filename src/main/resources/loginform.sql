DROP DATABASE IF EXISTS loginform;
CREATE DATABASE loginform CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci;
USE loginform;


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
    PRIMARY KEY (username, role_name),
    FOREIGN KEY(username) REFERENCES user(username)
);

DELETE FROM user_role
WHERE username = 'test';

DELETE FROM user
WHERE username = 'test';