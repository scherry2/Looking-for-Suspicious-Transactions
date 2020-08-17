Create Table card_holder(
	id SERIAl PRIMARY KEY,
	name VARCHAR (255)
	);
Create Table card(
	card VARCHAR (20),
	id_card_holder INT,
	FOREIGN KEY (id_card_holder) REFERENCES card_holder(id),
	PRIMARY KEY (card)
	);
Create Table merchant_category(
	id SERIAL PRIMARY KEY,
	name VARCHAR (35)
	);
	
Create Table merchant (
	id SERIAL PRIMARY KEY,
	name VARCHAR (255),
	id_merchant_category INT,
	FOREIGN KEY (id_merchant_category) REFERENCES merchant_category(id)
	);
Create Table transaction (
	id SERIAL PRIMARY KEY,
	date DATE,
	amount FLOAT,
	card VARCHAR (20),
	id_merchant INT,
	FOREIGN KEY (id_merchant) REFERENCES merchant(id),
	FOREIGN KEY (card) REFERENCES card(card)
	);
	
	
DROP TABLE IF EXISTS card;

DROP TABLE IF EXISTS card_holder;
DROP TABLE IF EXISTS merchant;
DROP TABLE IF EXISTS merchant_category;
DROP TABLE IF EXISTS transaction;


