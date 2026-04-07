DROP DATABASE php_poo;
CREATE DATABASE php_poo;
USE php_poo;

CREATE TABLE `user`
(
    id         INT PRIMARY KEY AUTO_INCREMENT,
    email      VARCHAR(255) NOT NULL UNIQUE,
    username   VARCHAR(255) NOT NULL UNIQUE,
    password   VARCHAR(255) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE contact
(
    id         INT PRIMARY KEY AUTO_INCREMENT,
    email      VARCHAR(255) NOT NULL,
    subject    VARCHAR(255) NOT NULL,
    message    TEXT         NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

DROP TABLE product;

CREATE TABLE product
(
    id          INT PRIMARY KEY AUTO_INCREMENT,
    picture     VARCHAR(255),
    title       VARCHAR(255) NOT NULL,
    slug        VARCHAR(255) NOT NULL,
    description TEXT         NOT NULL,
    price       FLOAT        NOT NULL,
    created_at  DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at  DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

# Mes mdp sont "password"
INSERT INTO user (username, email, password)
VALUES ('M2i', 'm2i@gmail.com', '$2y$10$2CTv2LcrLK42K5eKezQDDu0bwhufFYVPCMwsPa/cAI/8wY5JaZLeK'),
       ('Killer60', 'killer@gmail.com', '$2y$10$2CTv2LcrLK42K5eKezQDDu0bwhufFYVPCMwsPa/cAI/8wY5JaZLeK'),
       ('LeGoat', 'legoat@gmail.com', '$2y$10$2CTv2LcrLK42K5eKezQDDu0bwhufFYVPCMwsPa/cAI/8wY5JaZLeK'),
       ('JPP80', 'jpp@gmail.com', '$2y$10$2CTv2LcrLK42K5eKezQDDu0bwhufFYVPCMwsPa/cAI/8wY5JaZLeK'),
       ('KritoWazabi', 'krito@gmail.com', '$2y$10$2CTv2LcrLK42K5eKezQDDu0bwhufFYVPCMwsPa/cAI/8wY5JaZLeK'),
       ('Cr7', 'cr@gmail.com', '$2y$10$2CTv2LcrLK42K5eKezQDDu0bwhufFYVPCMwsPa/cAI/8wY5JaZLeK'),
       ('Dell', 'dell@gmail.com', '$2y$10$2CTv2LcrLK42K5eKezQDDu0bwhufFYVPCMwsPa/cAI/8wY5JaZLeK'),
       ('RaniLeBG', 'rani@gmail.com', '$2y$10$2CTv2LcrLK42K5eKezQDDu0bwhufFYVPCMwsPa/cAI/8wY5JaZLeK'),
       ('AuroreFitness', 'a.fitrness@gmail.com', '$2y$10$2CTv2LcrLK42K5eKezQDDu0bwhufFYVPCMwsPa/cAI/8wY5JaZLeK'),
       ('Cristaline', 'crista@gmail.com', '$2y$10$2CTv2LcrLK42K5eKezQDDu0bwhufFYVPCMwsPa/cAI/8wY5JaZLeK');
