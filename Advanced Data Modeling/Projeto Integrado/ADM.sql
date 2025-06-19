CREATE TABLE `PessoaFisica` (
  `cpf` varchar(255) PRIMARY KEY,
  `name` varchar(255),
  `email` varchar(255),
  `telefone` varchar(255),
  `created_at` timestamp,
  `foto_url` varchar(255),
  `assinatura_digital` varchar(255)
);

CREATE TABLE `PessoaJuridica` (
  `cnpj` varchar(255) PRIMARY KEY,
  `name` varchar(255),
  `email` varchar(255),
  `telefone` varchar(255),
  `created_at` timestamp,
  `foto_url` varchar(255),
  `assinatura_digital` varchar(255)
);

CREATE TABLE `TipoCliente` (
  `id` integer PRIMARY KEY,
  `tipo` varchar(255)
);

CREATE TABLE `Cliente` (
  `id` integer PRIMARY KEY,
  `tipo` int,
  `pessoa_fisica_cpf` varchar(255),
  `pessoa_juridica_cnpj` varchar(255),
  `saldo` decimal
);

CREATE TABLE `TipoTransacao` (
  `id` integer PRIMARY KEY,
  `name` varchar(255)
);

CREATE TABLE `Transacoes` (
  `id` integer PRIMARY KEY,
  `origem_id` int,
  `destino_id` int,
  `tipo_transacao` int,
  `valor` decimal,
  `data_hora` timestamp
);

CREATE TABLE `ProdutosCredito` (
  `id` integer PRIMARY KEY,
  `nome` varchar(255),
  `taxa_de_juros` decimal
);

CREATE TABLE `ContratacoesCredito` (
  `id` integer PRIMARY KEY,
  `cliente_id` int,
  `produto_id` int,
  `periodo_total` int
);

CREATE TABLE `RecomendacaoCreditoParaCliente` (
  `id` integer PRIMARY KEY,
  `produto_recomendado` int,
  `cliente_id` int,
  `prioridade` integer,
  `localizacao` int
);

CREATE TABLE `LugarAnuncio` (
  `id` integer PRIMARY KEY,
  `name` varchar(255)
);

ALTER TABLE `Cliente` ADD FOREIGN KEY (`tipo`) REFERENCES `TipoCliente` (`id`);

ALTER TABLE `Cliente` ADD FOREIGN KEY (`pessoa_fisica_cpf`) REFERENCES `PessoaFisica` (`cpf`);

ALTER TABLE `Cliente` ADD FOREIGN KEY (`pessoa_juridica_cnpj`) REFERENCES `PessoaJuridica` (`cnpj`);

ALTER TABLE `Transacoes` ADD FOREIGN KEY (`origem_id`) REFERENCES `Cliente` (`id`);

ALTER TABLE `Transacoes` ADD FOREIGN KEY (`destino_id`) REFERENCES `Cliente` (`id`);

ALTER TABLE `Transacoes` ADD FOREIGN KEY (`tipo_transacao`) REFERENCES `TipoTransacao` (`id`);

ALTER TABLE `ContratacoesCredito` ADD FOREIGN KEY (`cliente_id`) REFERENCES `Cliente` (`id`);

ALTER TABLE `ContratacoesCredito` ADD FOREIGN KEY (`produto_id`) REFERENCES `ProdutosCredito` (`id`);

ALTER TABLE `RecomendacaoCreditoParaCliente` ADD FOREIGN KEY (`produto_recomendado`) REFERENCES `ProdutosCredito` (`id`);

ALTER TABLE `RecomendacaoCreditoParaCliente` ADD FOREIGN KEY (`cliente_id`) REFERENCES `Cliente` (`id`);

ALTER TABLE `RecomendacaoCreditoParaCliente` ADD FOREIGN KEY (`localizacao`) REFERENCES `LugarAnuncio` (`id`);
