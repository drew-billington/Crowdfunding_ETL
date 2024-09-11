-- create and check 'contacts' table
DROP TABLE IF EXISTS contacts;
CREATE TABLE contacts (
	contact_id INT PRIMARY KEY NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	email VARCHAR(50) NOT NULL
);
SELECT * FROM contacts


-- create and check 'category' table
DROP TABLE IF EXISTS category;
CREATE TABLE category (
	category_id VARCHAR(5) PRIMARY KEY NOT NULL,
	category VARCHAR(20) NOT NULL
);
SELECT * FROM category


-- create and check 'subcategory' table
DROP TABLE IF EXISTS subcategory;
CREATE TABLE subcategory (
	subcategory_id VARCHAR(9) PRIMARY KEY NOT NULL,
	subcategory VARCHAR(20) NOT NULL
);
SELECT * FROM subcategory


-- create and check 'campaign' table
DROP TABLE IF EXISTS campaign;
CREATE TABLE campaign (
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	company_name VARCHAR(50) NOT NULL,
	description VARCHAR(100) NOT NULL,
	goal INT NOT NULL,
	pledged INT NOT NULL,
	outcome VARCHAR(10) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(2) NOT NULL,
	currency VARCHAR(3) NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(5) NOT NULL,
	subcategory_id VARCHAR(9) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);
SELECT * FROM campaign

	
-- Load in csv, check load success:
SELECT * FROM contacts
SELECT * FROM category
SELECT * FROM subcategory
SELECT * FROM campaign