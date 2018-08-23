DROP DATABASE IF EXISTS burgers_db;

CREATE DATABASE burgers_db;

USE burgers_db;

CREATE TABLE burgers (
    id INT AUTO_INCREMENT NOT NULL,
    burger_name VARCHAR (50) NOT NULL,
    devoured BOOLEAN NOT NULL DEFAULT 0,
    PRIMARY KEY (id)
);

CREATE TABLE menu (
    id INT AUTO_INCREMENT NOT NULL,
    item VARCHAR (50) NOT NULL,
    entree BOOLEAN NOT NULL DEFAULT 1,
    PRIMARY KEY (id)
);

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '';

INSERT INTO burgers (burger_name) VALUES ('Mushroom Swiss Burger');
INSERT INTO burgers (burger_name) VALUES ('Southwestern Veggie Burger');
INSERT INTO burgers (burger_name) VALUES ('Spinach Artichoke Turkey Burger');
INSERT INTO burgers (burger_name) VALUES ('Black & Bleu Burger');

INSERT INTO menu (item) VALUES ('Mushroom Swiss Burger');
INSERT INTO menu (item) VALUES ('Southwestern Veggie Burger');
INSERT INTO menu (item) VALUES ('Spinach Artichoke Turkey Burger');
INSERT INTO menu (item) VALUES ('Grilled Teriyaki Chicken Burger');
INSERT INTO menu (item) VALUES ('Portobello Bacon Burger');
INSERT INTO menu (item) VALUES ('Cheeseburger');
INSERT INTO menu (item) VALUES ('Cowboy Whiskey Burger');
INSERT INTO menu (item) VALUES ('Garden & shroom Burger');
INSERT INTO menu (item) VALUES ('Chef Special Burger');
INSERT INTO menu (item) VALUES ('Monster Burger');

INSERT INTO menu (item, entree) VALUES ('French Fries', 0);
INSERT INTO menu (item, entree) VALUES ('Cheese Fries', 0);
INSERT INTO menu (item, entree) VALUES ('Onion Rings', 0);
INSERT INTO menu (item, entree) VALUES ('Garden Salad', 0);
INSERT INTO menu (item, entree) VALUES ('Caesar Salad', 0);
INSERT INTO menu (item, entree) VALUES ('Curly Fries', 0);
INSERT INTO menu (item, entree) VALUES ('Waffle Fries', 0);