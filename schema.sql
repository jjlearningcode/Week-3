CREATE DATABASE IF NOT EXISTS equipment_checkout;
USE equipment_checkout;

CREATE TABLE IF NOT EXISTS student (
student_id INT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE,
phone_number VARCHAR(20),
birth_date DATE
);

CREATE TABLE IF NOT EXISTS category (
category_id INT PRIMARY KEY,
category_name VARCHAR(50) NOT NULL UNIQUE,
description VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS equipment (
equipment_id INT PRIMARY KEY,
category_id INT NOT NULL,
equipment_name VARCHAR(100) NOT NULL,
seerial_number VARCHAR(100) NOT NULL UNIQUE,
purchase_date DATE,
status VARCHAR(20) NOT NULL DEFAULT 'Available',
FOREIGN KEY (category_id) REFERENCES category(category_id)
);

CREATE TABLE IF NOT EXISTS checkout (
checkout_id INT PRIMARY KEY,
student_id INT NOT NULL,
equipment_id INT NOT NULL,
checkout_date DATE NOT NULL,
due_date DATE NOT NULL,
return_date DATE,
return_condition VARCHAR(50),
FOREIGN KEY (student_id) REFERENCES student(student_id),
FOREIGN KEY (equipment_id) REFERENCES equipment(equipment_id)
);
