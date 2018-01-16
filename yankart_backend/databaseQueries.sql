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
VALUES ('Karthikeyan', 'V', 'ADMIN', true, '$2y$10$Dv3b1VlDpQ3OnjtLCwwBiOHId4ECegiWDz.Jq8rkksysc9.DpbZ2K', 'kv@gmail.com', '9888888882');
INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES ('Yan', 'Karto', 'SUPPLIER', true, '$2y$10$8Yvv5rlH0NvZGwKZyOm1Vu2DGemktNALcx94C0/m3.CbPYxIArvJ6', 'yan@gmail.com', '1239999899');
INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES ('Naruto', 'Uzumaki', 'SUPPLIER', true, '$2y$10$x2bEyO60xLBRXhJtrB3Qg.pR9MXrYMbKq9yEAqWmmhKRdnBvHC/L.', 'nu@gmail.com', '6279875757');


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
VALUES ('YANABC123DEFY', 'Hybrid Tea Rose Plant','We are a top notch supplier of Hybrid Tea Rose Plant.', 200, 5, true, 1, 2, 0, 0 );

INSERT INTO product (code, name, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('YANABC456DEFY', 'Anthurium Flower Plant','Driven by a vision to achieve significant growth in this industry, we are providing a premium quality array of Anthurium Flower Plant.', 150, 5, true, 2, 3, 0, 0 );

INSERT INTO product (code, name, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('YANABC789DEFY', 'tinny oriantal plant','We are successfully meeting the varied requirements of our clients by providing the best quality range of Decorative Ornamental Plant.', 600, 5, true, 3, 2, 0, 0 );

INSERT INTO product (code, name, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('YANABC101112DEFY', 'Lantana Camara Depressa plant','We are leading and eminent industry which is offering a broad range of Lantana Camara Depressa. ', 300, 5, true, 2, 3, 0, 0 );

INSERT INTO product (code, name, description, unit_price, quantity, is_active, category_id, supplier_id, purchases, views)
VALUES ('YANABC131415DEFY', 'Ficus Panda Plant','We are remarkable entity, engaged in offering superior quality of Ficus Panda Plant.', 1500, 5, true, 3, 2, 0, 0 );