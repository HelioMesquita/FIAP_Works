A QuantumFinance contratou a consultoria SmartMind Analytics para desenvolver seu aplicativo QuantumApp. 
O objetivo é que o aplicativo seja simples e fácil de operar, e listaram uma série de requisitos para o negócio. 
Como arquiteto de dados, desenvolva modelo de dados com a técnica mais performática para cada requisito do aplicativo:
1. Cadastro de cliente com fotos e assinatura eletrônica, e informações dos contatos do cliente
2. Processo de transações (Doc, TED, Pix)
3. Recomendação de produtos de crédito para a Home
4. Telas e relatórios para análise das transações da conta (exemplo: análise por período e por tipo de movimento)

Entrega: diagramas de modelagem e scripts de criação dos bancos gerados automaticamente pelas ferramentas de modelagem.

Para cada um dos cenários acima, descreva qual a modelagem mais indicada e o por quê. Logo em seguida, apresente um diagrama conforme a modelagem escolhida.
Se a sua modelagem for:
- Modelagem Relacional, então apresente um diagrama entidade-relacionamento;
- Modelagem Dimensional então apresente um diagrama apresentando as tabelas fato e dimensão;
- Modelagem NoSQL, do tipo Documento, então apresente um exemplo de JSON ou JSON Schema;
- Modelagem NoSQL, do tipo Grafo, então apresente um grafo contendo exemplos de instâncias como grafos e suas arestas;
- Modelagem NoSQL, do tipo Chave-Valor, então apresente uma lista contendo exemplos de chave-valor;
- Modelagem NoSQL, do tipo Colunar, então apresente exemplos de registros no estilo "família de super-colunas".





Justificativa Técnica da Escolha do Modelo Relacional para o Projeto QuantumApp

1. Introdução

A QuantumFinance, por meio da consultoria SmartMind Analytics, solicitou o desenvolvimento do aplicativo QuantumApp, que visa oferecer uma plataforma financeira digital robusta, segura e de fácil operação para seus usuários. Diante dos requisitos apresentados, torna-se imprescindível a definição de um modelo de dados que atenda às necessidades operacionais, priorizando a integridade, a consistência e a confiabilidade das informações.

Este documento tem como objetivo justificar a adoção da modelagem relacional como a mais adequada para os quatro principais pilares funcionais do aplicativo, considerando as características do negócio, os requisitos técnicos e as melhores práticas de arquitetura de dados.

⸻

2. Fundamentação Técnica

A modelagem relacional é reconhecida como uma abordagem eficiente e consolidada para sistemas que demandam alta integridade dos dados, consistência transacional e rastreabilidade completa. Fundamentada nos princípios da Teoria dos Conjuntos e na Álgebra Relacional, essa modelagem permite a representação de dados estruturados por meio de entidades, atributos e relacionamentos, além de oferecer suporte nativo a mecanismos de integridade referencial e transações ACID (Atomicidade, Consistência, Isolamento e Durabilidade).

⸻

3. Análise dos Requisitos e Justificativa da Modelagem Relacional

3.1. Cadastro de Clientes com Fotos, Assinatura Eletrônica e Informações de Contato

O cadastro de clientes envolve dados estruturados e sensíveis, como CPF, CNPJ, nome, telefone, e-mail, além de dados complementares, como fotos e assinaturas digitais.

Justificativa da modelagem relacional:
	•	Adoção de chaves primárias (CPF ou CNPJ) para garantir a unicidade dos registros.
	•	Utilização de chaves estrangeiras para assegurar integridade entre entidades, como Pessoa Física, Pessoa Jurídica e Conta.
	•	Definição de restrições de integridade (NOT NULL, UNIQUE, FOREIGN KEY) assegura a consistência dos dados cadastrais.
	•	Armazenamento de dados binários (fotos e assinaturas) de forma referenciada (via URL) ou, quando necessário, diretamente no banco utilizando campos do tipo BLOB.
	•	O modelo relacional garante rastreabilidade, evitando inconsistências cadastrais que poderiam impactar diretamente os processos operacionais e financeiros.

⸻

3.2. Processamento de Transações (DOC, TED, PIX)

O processamento de transações financeiras é um dos pilares críticos do aplicativo, exigindo altíssima confiabilidade e segurança na movimentação dos recursos.

Justificativa da modelagem relacional:
	•	Suporte a transações ACID, garantindo que operações financeiras sejam realizadas de forma atômica e consistente, mesmo em cenários de falhas ou concorrência elevada.
	•	A integridade referencial assegura que todas as transações ocorram entre contas válidas e previamente cadastradas.
	•	Implementação eficiente de controle de saldos, débitos e créditos, com mecanismos nativos de bloqueio, isolamento e rollback.
	•	Registro completo de logs transacionais, com detalhamento da origem, destino, tipo de transação, valores e data/hora, garantindo rastreabilidade e auditoria dos movimentos financeiros.
	•	Atende plenamente às exigências regulatórias e de compliance, fundamentais no setor financeiro.

⸻

3.3. Recomendação de Produtos de Crédito na Home do Aplicativo

O módulo de recomendação de produtos de crédito tem como objetivo sugerir aos usuários produtos financeiros aderentes ao seu perfil e necessidades.

Justificativa da modelagem relacional:
	•	A lógica de recomendação no contexto apresentado baseia-se em regras de negócio simples, utilizando critérios como prioridade, perfil da conta e localização.
	•	A utilização de tabelas relacionais permite a associação direta entre contas, produtos de crédito e canais de exibição (ex.: posição na interface).
	•	As consultas necessárias são predominantemente relacionais e performáticas, não havendo demanda por algoritmos de aprendizado de máquina ou processamento massivo de dados, que justificariam uma arquitetura baseada em NoSQL.
	•	A consistência e integridade dos dados são mantidas em todos os processos de recomendação, garantindo que os produtos sugeridos sejam válidos e compatíveis com o perfil do usuário.

⸻

3.4. Geração de Telas e Relatórios Analíticos das Transações da Conta

O aplicativo deve disponibilizar aos usuários relatórios e consultas analíticas sobre seus movimentos financeiros, como extratos por período e consolidações por tipo de transação.

Justificativa da modelagem relacional:
	•	As consultas são operacionais e não apresentam características de análise massiva de dados (Big Data) ou geração de dashboards em larga escala.
	•	A utilização de índices relacionais (INDEX), combinada com consultas otimizadas (SELECT ... GROUP BY ...), proporciona desempenho adequado às necessidades do aplicativo.
	•	A modelagem relacional garante que os dados apresentados nos relatórios sejam consistentes, precisos e atualizados, evitando discrepâncias ou informações inconsistentes.
	•	A estrutura relacional facilita a construção de consultas ad hoc e a geração de relatórios parametrizados por período, tipo de movimento, origem, destino, entre outros.

⸻

4. Conclusão

Diante da análise técnica dos requisitos funcionais da aplicação QuantumApp, conclui-se que a adoção do modelo relacional é a solução mais aderente, segura e eficiente. Esta abordagem permite:
	•	Garantia de integridade referencial e consistência dos dados.
	•	Suporte transacional completo, fundamental para operações financeiras.
	•	Facilidade de manutenção e escalabilidade vertical, considerando o perfil do negócio.
	•	Atende às exigências legais e regulatórias, especialmente no que se refere à LGPD, compliance financeiro e auditoria.

Portanto, o banco de dados relacional, representado por soluções como MySQL, PostgreSQL, Oracle ou SQL Server, configura-se como a escolha tecnicamente mais adequada para suportar os processos críticos do QuantumApp, assegurando robustez, confiabilidade e governança dos dados.
