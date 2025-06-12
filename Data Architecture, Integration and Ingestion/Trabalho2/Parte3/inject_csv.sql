USE BlackWhiteGrayStore;

LOAD DATA INFILE './clients.csv'
INTO TABLE clients
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(cpf, name, mail, address, zip_code, phone);


LOAD DATA INFILE './products.csv'
INTO TABLE products
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(name, model, manufacturer, color, size, price);