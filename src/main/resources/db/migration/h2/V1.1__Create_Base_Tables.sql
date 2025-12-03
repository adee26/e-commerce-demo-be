CREATE TABLE IF NOT EXISTS product_category (
   id serial PRIMARY KEY,
   category_name VARCHAR(255) NULL DEFAULT NULL);


CREATE TABLE IF NOT EXISTS product (
   id serial PRIMARY KEY,
   sku VARCHAR(255) DEFAULT NULL,
   name VARCHAR(255) DEFAULT NULL,
   description VARCHAR(255) DEFAULT NULL,
   unit_price DECIMAL(13,2) DEFAULT NULL,
   image_url VARCHAR(255) DEFAULT NULL,
   active BOOLEAN DEFAULT true,
   units_in_stock INTEGER DEFAULT NULL,
   date_created TIMESTAMP DEFAULT NULL,
   last_updated TIMESTAMP DEFAULT NULL,
   category_id INTEGER NOT NULL,
  CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES product_category (id)
);

-- -----------------------------------------------------
-- Add sample data
-- -----------------------------------------------------

INSERT INTO product_category(category_name) VALUES ('BOOKS');

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1000', 'JavaScript - The Fun Parts', 'Learn JavaScript',
'assets/images/products/placeholder.png'
,true,100,19.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1001', 'Spring Framework Tutorial', 'Learn Spring',
'assets/images/products/placeholder.png'
,true,100,29.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1002', 'Kubernetes - Deploying Containers', 'Learn Kubernetes',
'assets/images/products/placeholder.png'
,true,100,24.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1003', 'Internet of Things (IoT) - Getting Started', 'Learn IoT',
'assets/images/products/placeholder.png'
,true,100,29.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1004', 'The Go Programming Language: A to Z', 'Learn Go',
'assets/images/products/placeholder.png'
,true,100,24.99,1, NOW());
