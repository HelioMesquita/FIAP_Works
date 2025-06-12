-- Criação do keyspace
CREATE KEYSPACE IF NOT EXISTS black_white_gray_store WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};
USE black_white_gray_store;

-- Tabela Sizes
CREATE TABLE IF NOT EXISTS sizes (
    id int PRIMARY KEY,
    size text
);
INSERT INTO sizes (id, size) VALUES (1, 'p');
INSERT INTO sizes (id, size) VALUES (2, 'm');
INSERT INTO sizes (id, size) VALUES (3, 'g');
INSERT INTO sizes (id, size) VALUES (4, 'gg');
INSERT INTO sizes (id, size) VALUES (5, 'xl');
INSERT INTO sizes (id, size) VALUES (6, 'xxl');

-- Tabela Colors
CREATE TABLE IF NOT EXISTS colors (
    id int PRIMARY KEY,
    name text
);
INSERT INTO colors (id, name) VALUES (1, 'black');
INSERT INTO colors (id, name) VALUES (2, 'white');
INSERT INTO colors (id, name) VALUES (3, 'gray');

-- Tabela Manufacturers
CREATE TABLE IF NOT EXISTS manufacturers (
    id int PRIMARY KEY,
    company_name text
);
INSERT INTO manufacturers (id, company_name) VALUES (1, 'QuantumWear');
INSERT INTO manufacturers (id, company_name) VALUES (2, 'AlphaStyle');
INSERT INTO manufacturers (id, company_name) VALUES (3, 'NeoCloth');
INSERT INTO manufacturers (id, company_name) VALUES (4, 'UrbanFlex');
INSERT INTO manufacturers (id, company_name) VALUES (5, 'SmartFit');
INSERT INTO manufacturers (id, company_name) VALUES (6, 'FlexiWear');
INSERT INTO manufacturers (id, company_name) VALUES (7, 'BasicTrend');
INSERT INTO manufacturers (id, company_name) VALUES (8, 'EvoWear');
INSERT INTO manufacturers (id, company_name) VALUES (9, 'ClassicLine');
INSERT INTO manufacturers (id, company_name) VALUES (10, 'FutureThreads');

-- Tabela Clients
CREATE TABLE IF NOT EXISTS clients (
    cpf text PRIMARY KEY,
    name text,
    mail text,
    address text,
    zip_code text,
    phone text
);
INSERT INTO clients (cpf, name, mail, address, zip_code, phone) VALUES ('40761839593', 'Joana da Rosa', 'icavalcanti@gmail.com', 'Aeroporto Farias, 57, Nova Cintra, 64129-330 Silva / SE', '73729840', '03002555484');
INSERT INTO clients (cpf, name, mail, address, zip_code, phone) VALUES ('20765134934', 'Leonardo Cunha', 'mariana55@ig.com.br', 'Passarela de Santos, 49, Corumbiara, 34828-298 Mendes de Ferreira / PA', '78034710', '+5508191403292');
INSERT INTO clients (cpf, name, mail, address, zip_code, phone) VALUES ('54096782300', 'Erick Novaes', 'thales19@uol.com.br', 'Estação Alves, 684, Vila Pilar, 63522729 Dias do Sul / AL', '90281645', '09003052547');
INSERT INTO clients (cpf, name, mail, address, zip_code, phone) VALUES ('75480316966', 'Raquel Nunes', 'mda-cruz@uol.com.br', 'Condomínio de Correia, 57, Vila Jardim São José, 64415881 Barbosa / RN', '21667052', '+552169303600');
INSERT INTO clients (cpf, name, mail, address, zip_code, phone) VALUES ('96245731070', 'Sra. Maria Cecília da Conceição', 'joanada-cunha@ribeiro.org', 'Viela Anthony Barros, 510, Conjunto Califórnia Ii, 82150525 Carvalho / MS', '47577881', '+552157668786');
INSERT INTO clients (cpf, name, mail, address, zip_code, phone) VALUES ('81395720479', 'Davi Lucas Azevedo', 'camposemanuella@yahoo.com.br', 'Recanto de Nunes, 859, Santo André, 38065-580 Cardoso / PR', '56938088', '+556109505254');
INSERT INTO clients (cpf, name, mail, address, zip_code, phone) VALUES ('79605132443', 'Yasmin da Cruz', 'qsouza@nogueira.br', 'Quadra de da Luz, Vila Aeroporto, 59569-286 Duarte da Praia / MG', '33438957', '+554195925324');
INSERT INTO clients (cpf, name, mail, address, zip_code, phone) VALUES ('82136749528', 'Elisa Carvalho', 'nicolasnogueira@yahoo.com.br', 'Largo Nicole Aragão, 4, Diamante, 87148476 Nogueira do Norte / AM', '52498748', '8475311180');
INSERT INTO clients (cpf, name, mail, address, zip_code, phone) VALUES ('98574016276', 'Thomas Lima', 'xcostela@freitas.com', 'Fazenda Ferreira, 34, Vila Paraíso, 31262-390 Teixeira do Amparo / RO', '41949302', '+5508490622780');
INSERT INTO clients (cpf, name, mail, address, zip_code, phone) VALUES ('85391724619', 'Pietro Freitas', 'monteirocaroline@moraes.org', 'Passarela de Campos, 26, Tupi B, 82726483 Campos / GO', '56805668', '+558189204978');

-- Tabela Products
CREATE TABLE IF NOT EXISTS products (
    id int PRIMARY KEY,
    name text,
    model text,
    manufacturer int,
    color int,
    size int,
    price decimal
);
INSERT INTO products (id, name, model, manufacturer, color, size, price) VALUES (1, 'Camiseta Repellat', 'M001', 10, 3, 1, 49.99);
INSERT INTO products (id, name, model, manufacturer, color, size, price) VALUES (2, 'Camiseta Nesciunt', 'M002', 1, 1, 6, 39.90);
INSERT INTO products (id, name, model, manufacturer, color, size, price) VALUES (3, 'Camiseta Eos', 'M003', 4, 3, 5, 44.90);
INSERT INTO products (id, name, model, manufacturer, color, size, price) VALUES (4, 'Camiseta Omnis', 'M004', 2, 2, 1, 50.50);
INSERT INTO products (id, name, model, manufacturer, color, size, price) VALUES (5, 'Camiseta Enim', 'M005', 6, 1, 1, 58.00);
INSERT INTO products (id, name, model, manufacturer, color, size, price) VALUES (6, 'Camiseta Mollitia', 'M006', 10, 1, 2, 42.70);
INSERT INTO products (id, name, model, manufacturer, color, size, price) VALUES (7, 'Camiseta Commodi', 'M007', 3, 3, 1, 29.90);
INSERT INTO products (id, name, model, manufacturer, color, size, price) VALUES (8, 'Camiseta Consequatur', 'M008', 8, 1, 6, 35.20);
INSERT INTO products (id, name, model, manufacturer, color, size, price) VALUES (9, 'Camiseta Quidem', 'M009', 1, 3, 1, 38.10);
INSERT INTO products (id, name, model, manufacturer, color, size, price) VALUES (10, 'Camiseta Natus', 'M010', 9, 2, 5, 60.00);

-- Tabela Orders
CREATE TABLE IF NOT EXISTS orders (
    id int PRIMARY KEY,
    client_cpf text,
    address text,
    zip_code text,
    total_value decimal
);
INSERT INTO orders (id, client_cpf, address, zip_code, total_value) VALUES (1, '40761839593', 'Rua A, 100', '01001000', 49.99);
INSERT INTO orders (id, client_cpf, address, zip_code, total_value) VALUES (2, '20765134934', 'Rua B, 200', '02001000', 39.90);
INSERT INTO orders (id, client_cpf, address, zip_code, total_value) VALUES (3, '54096782300', 'Rua C, 300', '03001000', 44.90);
INSERT INTO orders (id, client_cpf, address, zip_code, total_value) VALUES (4, '75480316966', 'Rua D, 400', '04001000', 100.49);
INSERT INTO orders (id, client_cpf, address, zip_code, total_value) VALUES (5, '96245731070', 'Rua E, 500', '05001000', 58.00);
INSERT INTO orders (id, client_cpf, address, zip_code, total_value) VALUES (6, '81395720479', 'Rua F, 600', '06001000', 42.70);
INSERT INTO orders (id, client_cpf, address, zip_code, total_value) VALUES (7, '79605132443', 'Rua G, 700', '07001000', 44.90);
INSERT INTO orders (id, client_cpf, address, zip_code, total_value) VALUES (8, '82136749528', 'Rua H, 800', '08001000', 65.10);
INSERT INTO orders (id, client_cpf, address, zip_code, total_value) VALUES (9, '98574016276', 'Rua I, 900', '09001000', 139.80);
INSERT INTO orders (id, client_cpf, address, zip_code, total_value) VALUES (10, '85391724619', 'Rua J, 1000', '10001000', 38.10);

-- Tabela OrderItems
CREATE TABLE IF NOT EXISTS order_items (
    id int PRIMARY KEY,
    order_id int,
    product_id int,
    quantity int
);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (1, 1, 1, 1);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (2, 2, 2, 1);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (3, 3, 3, 1);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (4, 4, 1, 1);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (5, 4, 4, 1);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (6, 5, 5, 1);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (7, 6, 6, 1);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (8, 7, 3, 1);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (9, 8, 7, 1);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (10, 8, 8, 1);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (11, 9, 2, 2);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (12, 9, 10, 1);
INSERT INTO order_items (id, order_id, product_id, quantity) VALUES (13, 10, 9, 1);
