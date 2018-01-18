CREATE TABLE category (
	id IDENTITY,
	name VARCHAR(50),
	description VARCHAR(255),
	image_url VARCHAR(50),
	is_active BOOLEAN,
	CONSTRAINT pk_category_id PRIMARY KEY (id) 

);

INSERT INTO category (name,description,image_url,is_active) VALUES ('FLOWERING PLANTS','This is the description for FLOWERING PLANTS','fp.png',true);
INSERT INTO category (name,description,image_url,is_active) VALUES ('GARDEN PLANTS','This is the description for GARDEN PLANTS','gp.png',true);
INSERT INTO category (name,description,image_url,is_active) VALUES ('ORNAMENTAL PLANTS','This is the description for ORNAMENTAL PLANTS','op.png',true);

CREATE TABLE user_detail (
	id IDENTITY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	role VARCHAR(50),
	enabled BOOLEAN,
	password VARCHAR(60),
	email VARCHAR(100),
	contact_number VARCHAR(15),	
	CONSTRAINT pk_user_id PRIMARY KEY(id)
);

INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES ('jyothsna korada', 'V', 'ADMIN', true, '$2a$10$at3ypJFUiTxwOtY0UaMK6eRU/oF7eUmK3ZdXLsfmoa/73Ts7oPOau', 'jyothsna.9999@gmail.com', '9999999999');
INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES ('virat', 'Kohli', 'SUPPLIER', true, '$2y$10$8Yvv5rlH0NvZGwKZyOm1Vu2DGemktNALcx94C0/m3.CbPYxIArvJ6', 'viratkohli@gmail.com', '6666666666');

CREATE TABLE product (
	id IDENTITY,
	code VARCHAR(20),
	name VARCHAR(50),
	description VARCHAR(255),
	unit_price DECIMAL(10,2),
	quantity INT,
	is_active BOOLEAN,
	category_id INT,
	supplier_id INT,
	purchases INT DEFAULT 0,
	views INT DEFAULT 0,
	CONSTRAINT pk_product_id PRIMARY KEY (id),
 	CONSTRAINT fk_product_category_id FOREIGN KEY (category_id) REFERENCES category (id),
	CONSTRAINT fk_product_supplier_id FOREIGN KEY (supplier_id) REFERENCES user_detail(id),	
);	


INSERT INTO product (code, name, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('YAN8B2CE172DB', 'bonsai','bonsai is a medicinal plant.', 1000, 2, true, 2, 1, 0, 0 );

INSERT INTO product (code, name, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('YAN640946F1E5', 'mango',' mango fruit.', 750, 3, true, 1, 2, 0, 0 );

INSERT INTO product (code, name, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('YANE9CE2D48F', 'roses',' rose plants.', 500, 4, true, 3, 3, 0, 0 );

