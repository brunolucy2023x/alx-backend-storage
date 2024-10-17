-- Author: Bruno Owino
-- Defines a users table with specified fields.
-- Includes a unique, non-null email and an auto-incrementing ID.
-- This script can run on any database without causing errors if the table already exists.

CREATE TABLE IF NOT EXISTS users (
       id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
       email VARCHAR(255) NOT NULL UNIQUE,
       name VARCHAR(255)
);
