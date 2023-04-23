
-- USER is a reserved keyword with Postgres
-- You must use double quotes in every query that user is in:
-- ex. SELECT * FROM "user";
-- Otherwise you will have errors!
CREATE TABLE "user" (
    "id" SERIAL PRIMARY KEY,
    "username" VARCHAR (80) UNIQUE NOT NULL,
    "password" VARCHAR (1000) NOT NULL
);

--USER info DATABASE table
CREATE TABLE "user_info" (
  id SERIAL PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  password VARCHAR(255) NOT NULL,
  confirm_password VARCHAR(255) NOT NULL
);



--Wallet info DATABASE table
CREATE TABLE bank_details (
  id SERIAL PRIMARY KEY,
  card_type VARCHAR(50) NOT NULL,
  account_number VARCHAR(50) NOT NULL,
  expiration_date DATE NOT NULL,
  security_code VARCHAR(10) NOT NULL,
  billing_address VARCHAR(255) NOT NULL
);
