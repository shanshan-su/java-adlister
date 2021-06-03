USE adlister_db;

CREATE TABLE IF NOT EXISTS users (
       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
       username VARCHAR(50) UNIQUE,
       email VARCHAR(20) NOT NULL UNIQUE,
       password VARCHAR(50) NOT NULL,
       PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS ads (
     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
     title VARCHAR(50) NOT NULL,
     description TEXT NOT NULL,
     user_id INT UNSIGNED,
     PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
);