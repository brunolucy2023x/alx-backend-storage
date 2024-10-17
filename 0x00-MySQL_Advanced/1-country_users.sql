-- Author: Bruno Owino
-- Creates a users table with an auto-incrementing ID, a unique email, and a country field with default value US.
-- The script is safe to run on any database, as it won’t fail if the table already exists.

CREATE TABLE IF NOT EXISTS users (
       id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
       email VARCHAR(255) NOT NULL UNIQUE,
       name VARCHAR(255),
       country ENUM ('US', 'CO', 'TN') NOT NULL DEFAULT 'US'
);
