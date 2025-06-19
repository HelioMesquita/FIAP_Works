CREATE DATABASE IF NOT EXISTS FintechDB;
USE FintechDB;

-- Pessoa Física
CREATE TABLE PessoaFisica (
  cpf VARCHAR(32) PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  telefone VARCHAR(20),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  foto_url VARCHAR(255),
  assinatura_digital VARCHAR(255)
);

-- Pessoa Jurídica
CREATE TABLE PessoaJuridica (
  cnpj VARCHAR(32) PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  telefone VARCHAR(20),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  foto_url VARCHAR(255),
  assinatura_digital VARCHAR(255)
);

-- Tipo de Conta
CREATE TABLE TipoConta (
  id INT AUTO_INCREMENT PRIMARY KEY,
  tipo VARCHAR(50) NOT NULL
);

-- Conta
CREATE TABLE Conta (
  id INT AUTO_INCREMENT PRIMARY KEY,
  tipo_conta INT NOT NULL,
  pessoa_fisica_cpf VARCHAR(32),
  pessoa_juridica_cnpj VARCHAR(32),
  saldo DECIMAL(15,2) DEFAULT 0,

  FOREIGN KEY (tipo_conta) REFERENCES TipoConta(id),
  FOREIGN KEY (pessoa_fisica_cpf) REFERENCES PessoaFisica(cpf),
  FOREIGN KEY (pessoa_juridica_cnpj) REFERENCES PessoaJuridica(cnpj)
);

-- Tipo de Transação
CREATE TABLE TipoTransacao (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL
);

-- Transações
CREATE TABLE Transacoes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  origem_id INT NOT NULL,
  destino_id INT NOT NULL,
  tipo_transacao INT NOT NULL,
  valor DECIMAL(15,2) NOT NULL,
  data_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

  FOREIGN KEY (origem_id) REFERENCES Conta(id),
  FOREIGN KEY (destino_id) REFERENCES Conta(id),
  FOREIGN KEY (tipo_transacao) REFERENCES TipoTransacao(id)
);

-- Produtos de Crédito
CREATE TABLE ProdutosCredito (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  taxa_de_juros DECIMAL(5,2) NOT NULL -- Exemplo: 12.50 (%)
);

-- Contratação de Crédito
CREATE TABLE ContratacoesCredito (
  id INT AUTO_INCREMENT PRIMARY KEY,
  conta_id INT NOT NULL,
  produto_id INT NOT NULL,
  periodo_total INT NOT NULL, -- Ex: número de meses

  FOREIGN KEY (conta_id) REFERENCES Conta(id),
  FOREIGN KEY (produto_id) REFERENCES ProdutosCredito(id)
);

-- Lugar de Anúncio
CREATE TABLE LugarAnuncio (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL
);

-- Recomendação de Crédito
CREATE TABLE RecomendacaoCreditoParaConta (
  id INT AUTO_INCREMENT PRIMARY KEY,
  produto_recomendado INT NOT NULL,
  conta_id INT NOT NULL,
  prioridade INT NOT NULL,
  localizacao INT NOT NULL,

  FOREIGN KEY (produto_recomendado) REFERENCES ProdutosCredito(id),
  FOREIGN KEY (conta_id) REFERENCES Conta(id),
  FOREIGN KEY (localizacao) REFERENCES LugarAnuncio(id)
);