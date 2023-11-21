DROP TABLE IF EXISTS contacts CASCADE;

CREATE TABLE IF NOT EXISTS public.contacts
(
    contact_id INT NOT NULL PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS category CASCADE;

CREATE TABLE IF NOT EXISTS category
(
    category_id VARCHAR(5) NOT NULL PRIMARY KEY,
    category VARCHAR(30) NOT NULL
);

DROP TABLE IF EXISTS subcategory CASCADE;

CREATE TABLE IF NOT EXISTS subcategory
(
    subcategory_id VARCHAR(10) NOT NULL PRIMARY KEY,
    subcategory VARCHAR(30) NOT NULL
);


DROP TABLE IF EXISTS campaign CASCADE;

CREATE TABLE IF NOT EXISTS campaign
(
    cf_id INT NOT NULL PRIMARY KEY,
    contact_id INT NOT NULL,
    company_name VARCHAR(50) NOT NULL,
    description VARCHAR(100) NOT NULL,
    goal NUMERIC(10,2) NOT NULL,
    pledged NUMERIC(10,2) NOT NULL,
    outcome VARCHAR(15) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(10) NOT NULL,
    currency VARCHAR(5) NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(5) NOT NULL,
    subcategory_id VARCHAR(10) NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id) 
);
