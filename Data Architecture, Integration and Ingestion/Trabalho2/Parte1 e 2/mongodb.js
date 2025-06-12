db = db.getSiblingDB("black_white_gray_store");

db.sizes.insertMany([
  { _id: 1, size: 'p' },
  { _id: 2, size: 'm' },
  { _id: 3, size: 'g' },
  { _id: 4, size: 'gg' },
  { _id: 5, size: 'xl' },
  { _id: 6, size: 'xxl' }
]);

db.colors.insertMany([
  { _id: 1, name: 'black' },
  { _id: 2, name: 'white' },
  { _id: 3, name: 'gray' }
]);

db.manufacturers.insertMany([
  { _id: 1, company_name: 'QuantumWear' },
  { _id: 2, company_name: 'AlphaStyle' },
  { _id: 3, company_name: 'NeoCloth' },
  { _id: 4, company_name: 'UrbanFlex' },
  { _id: 5, company_name: 'SmartFit' },
  { _id: 6, company_name: 'FlexiWear' },
  { _id: 7, company_name: 'BasicTrend' },
  { _id: 8, company_name: 'EvoWear' },
  { _id: 9, company_name: 'ClassicLine' },
  { _id: 10, company_name: 'FutureThreads' }
]);

db.clients.insertMany([
  {
    _id: "40761839593", name: "Joana da Rosa", mail: "icavalcanti@gmail.com",
    address: "Aeroporto Farias, 57, Nova Cintra, 64129-330 Silva / SE",
    zip_code: "73729840", phone: "03002555484"
  },
  {
    _id: "20765134934", name: "Leonardo Cunha", mail: "mariana55@ig.com.br",
    address: "Passarela de Santos, 49, Corumbiara, 34828-298 Mendes de Ferreira / PA",
    zip_code: "78034710", phone: "+5508191403292"
  },
  {
    _id: "54096782300", name: "Erick Novaes", mail: "thales19@uol.com.br",
    address: "Estação Alves, 684, Vila Pilar, 63522729 Dias do Sul / AL",
    zip_code: "90281645", phone: "09003052547"
  },
  {
    _id: "75480316966", name: "Raquel Nunes", mail: "mda-cruz@uol.com.br",
    address: "Condomínio de Correia, 57, Vila Jardim São José, 64415881 Barbosa / RN",
    zip_code: "21667052", phone: "+552169303600"
  },
  {
    _id: "96245731070", name: "Sra. Maria Cecília da Conceição", mail: "joanada-cunha@ribeiro.org",
    address: "Viela Anthony Barros, 510, Conjunto Califórnia Ii, 82150525 Carvalho / MS",
    zip_code: "47577881", phone: "+552157668786"
  },
  {
    _id: "81395720479", name: "Davi Lucas Azevedo", mail: "camposemanuella@yahoo.com.br",
    address: "Recanto de Nunes, 859, Santo André, 38065-580 Cardoso / PR",
    zip_code: "56938088", phone: "+556109505254"
  },
  {
    _id: "79605132443", name: "Yasmin da Cruz", mail: "qsouza@nogueira.br",
    address: "Quadra de da Luz, Vila Aeroporto, 59569-286 Duarte da Praia / MG",
    zip_code: "33438957", phone: "+554195925324"
  },
  {
    _id: "82136749528", name: "Elisa Carvalho", mail: "nicolasnogueira@yahoo.com.br",
    address: "Largo Nicole Aragão, 4, Diamante, 87148476 Nogueira do Norte / AM",
    zip_code: "52498748", phone: "8475311180"
  },
  {
    _id: "98574016276", name: "Thomas Lima", mail: "xcostela@freitas.com",
    address: "Fazenda Ferreira, 34, Vila Paraíso, 31262-390 Teixeira do Amparo / RO",
    zip_code: "41949302", phone: "+5508490622780"
  },
  {
    _id: "85391724619", name: "Pietro Freitas", mail: "monteirocaroline@moraes.org",
    address: "Passarela de Campos, 26, Tupi B, 82726483 Campos / GO",
    zip_code: "56805668", phone: "+558189204978"
  }
]);

db.products.insertMany([
  { _id: 1, name: "Camiseta Repellat", model: "M001", manufacturer: 10, color: 3, size: 1, price: 49.99 },
  { _id: 2, name: "Camiseta Nesciunt", model: "M002", manufacturer: 1, color: 1, size: 6, price: 39.90 },
  { _id: 3, name: "Camiseta Eos", model: "M003", manufacturer: 4, color: 3, size: 5, price: 44.90 },
  { _id: 4, name: "Camiseta Omnis", model: "M004", manufacturer: 2, color: 2, size: 1, price: 50.50 },
  { _id: 5, name: "Camiseta Enim", model: "M005", manufacturer: 6, color: 1, size: 1, price: 58.00 },
  { _id: 6, name: "Camiseta Mollitia", model: "M006", manufacturer: 10, color: 1, size: 2, price: 42.70 },
  { _id: 7, name: "Camiseta Commodi", model: "M007", manufacturer: 3, color: 3, size: 1, price: 29.90 },
  { _id: 8, name: "Camiseta Consequatur", model: "M008", manufacturer: 8, color: 1, size: 6, price: 35.20 },
  { _id: 9, name: "Camiseta Quidem", model: "M009", manufacturer: 1, color: 3, size: 1, price: 38.10 },
  { _id: 10, name: "Camiseta Natus", model: "M010", manufacturer: 9, color: 2, size: 5, price: 60.00 }
]);

db.orders.insertMany([
  { _id: 1, client_cpf: "40761839593", address: "Rua A, 100", zip_code: "01001000", total_value: 49.99 },
  { _id: 2, client_cpf: "20765134934", address: "Rua B, 200", zip_code: "02001000", total_value: 39.90 },
  { _id: 3, client_cpf: "54096782300", address: "Rua C, 300", zip_code: "03001000", total_value: 44.90 },
  { _id: 4, client_cpf: "75480316966", address: "Rua D, 400", zip_code: "04001000", total_value: 100.49 },
  { _id: 5, client_cpf: "96245731070", address: "Rua E, 500", zip_code: "05001000", total_value: 58.00 },
  { _id: 6, client_cpf: "81395720479", address: "Rua F, 600", zip_code: "06001000", total_value: 42.70 },
  { _id: 7, client_cpf: "79605132443", address: "Rua G, 700", zip_code: "07001000", total_value: 44.90 },
  { _id: 8, client_cpf: "82136749528", address: "Rua H, 800", zip_code: "08001000", total_value: 65.10 },
  { _id: 9, client_cpf: "98574016276", address: "Rua I, 900", zip_code: "09001000", total_value: 139.80 },
  { _id: 10, client_cpf: "85391724619", address: "Rua J, 1000", zip_code: "10001000", total_value: 38.10 }
]);

db.order_items.insertMany([
  { _id: 1, order_id: 1, product_id: 1, quantity: 1 },
  { _id: 2, order_id: 2, product_id: 2, quantity: 1 },
  { _id: 3, order_id: 3, product_id: 3, quantity: 1 },
  { _id: 4, order_id: 4, product_id: 1, quantity: 1 },
  { _id: 5, order_id: 4, product_id: 4, quantity: 1 },
  { _id: 6, order_id: 5, product_id: 5, quantity: 1 },
  { _id: 7, order_id: 6, product_id: 6, quantity: 1 },
  { _id: 8, order_id: 7, product_id: 3, quantity: 1 },
  { _id: 9, order_id: 8, product_id: 7, quantity: 1 },
  { _id: 10, order_id: 8, product_id: 8, quantity: 1 },
  { _id: 11, order_id: 9, product_id: 2, quantity: 2 },
  { _id: 12, order_id: 9, product_id: 10, quantity: 1 },
  { _id: 13, order_id: 10, product_id: 9, quantity: 1 }
]);
