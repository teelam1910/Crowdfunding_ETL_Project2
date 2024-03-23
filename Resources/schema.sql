--DROP TABLE contacts, category, subcategory, campaign;
-- Create tables

CREATE TABLE contacts (
  contact_id INT NOT NULL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL
);

CREATE TABLE category (
  category_ids VARCHAR(10) NOT NULL PRIMARY KEY,
  category VARCHAR(100) NOT NULL
);

CREATE TABLE subcategory (
  subcategory_ids VARCHAR(10) NOT NULL PRIMARY KEY,
  subcategory VARCHAR(100) NOT NULL
);

CREATE TABLE campaign (
  cf_id INT NOT NULL PRIMARY KEY,
  contact_id INT,
  company_name VARCHAR(100) NOT NULL,
  description VARCHAR(100) NOT NULL,
  goal float8 NOT NULL,
  pledged float8 NOT NULL,
  outcome VARCHAR(100) NOT NULL,
  backers_count INT NOT NULL,
  country VARCHAR(100) NOT NULL,
  currency VARCHAR(100) NOT NULL,
  launched_date DATE NOT NULL,
  end_date DATE NOT NULL,
  category_ids VARCHAR(6),
  subcategory_ids VARCHAR(9),
  FOREIGN KEY (contact_id) REFERENCES contacts (contact_id), 
  FOREIGN KEY (category_ids) REFERENCES category (category_ids),
  FOREIGN KEY (subcategory_ids) REFERENCES subcategory (subcategory_ids)
);