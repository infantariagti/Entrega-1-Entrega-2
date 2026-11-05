
-- Script
  
CREATE DATABASE jackson_moto_pecas;
USE jackson_moto_pecas;
create table cliente (
	  id_cliente int          not null primary key auto_increment,
    nome       varchar(100) not null,
    cpf        char(11)     not null unique,
    telefone   varchar(20)  not null,
    endereco   varchar(200) not null,
    logradouro varchar(150),
    bairro     varchar(100)
);
create table veiculo (
  	id_veiculo   int         not null primary key auto_increment,     
    ano          year        not null,     
    marca        varchar(60) not null,
    modelo       varchar(80) not null,
    placa        varchar(7)  not null unique,
    km_atual     int       	          check (km_atual >= 0),      
    id_cliente   int         not null,     
    cor          varchar(40) not null,
		foreign key (id_cliente)
			references cliente (id_cliente)
);
create table ordem_servico (
  	numero_os	         int          not null  primary key auto_increment,         
  	data_entrada         datetime     not null,          
    data_prevista        datetime,          
    status_os            varchar(30)  not null, 
    defeito_relatado     text         not null,           
    diagnostico_tecnico  text,             
    prazo_garantia       date         not null,           
    validade_orcamento   date,             
    forma_pagamento      varchar(30),  
    preco_total          decimal(10,2)          check (preco_total >= 0),
    id_veiculo           int          not null,
		foreign key (id_veiculo)
			references veiculo(id_veiculo)
);
create table peca (
	  id_peca            int            not null  primary key auto_increment,
    preco_custo        decimal(10,2)  not null  check (preco_custo >= 0),
    preco_venda        decimal(10,2)  not null  check (preco_venda >= 0),
    estoque_minimo     int            not null  check (estoque_minimo >= 0),
    quantidade_estoque int            not null  check (quantidade_estoque >= 0),
    codigo_referencia  varchar(50)    not null  unique,
    descricao_peca     varchar(150)   not null
);
create table servico (
  	id_servico         int            not null  primary key auto_increment,
	  nome_servico       varchar(100)   not null,
    preco_padrao       decimal(10,2)  not null  check (preco_padrao >= 0),
    descricao_servico  text 
);
create table item_os_servico (
	  id_item_servico    int            not null  primary key auto_increment,  
    quantidade         int            not null  check (quantidade > 0),
    preco_unitario     decimal(10,2)  not null  check (preco_unitario >= 0),          
    sub_total          decimal(10,2),              
    numero_os          int            not null,   
    id_servico         int            not null,  
		foreign key (numero_os)
			references ordem_servico (numero_os),
        foreign key (id_servico)
			references servico (id_servico)
);

-- Massa de Dados e INCERT INTO

-- CLIENTES

INSERT INTO cliente (nome, cpf, telefone, endereco, logradouro, bairro) VALUES
('Carlos Henrique', '12345678901', '11987654321', 'Rua A, 100', 'Rua A', 'São Mateus'),
('Marcos Oliveira', '23456789012', '11987654322', 'Rua B, 200', 'Rua B', 'Itaquera'),
('Roberto Santos', '34567890123', '11987654323', 'Rua C, 300', 'Rua C', 'Cidade Tiradentes'),
('André Ferreira', '45678901234', '11987654324', 'Rua D, 400', 'Rua D', 'São Mateus'),
('Cliente Teste', '56789012345', '11987654325', 'Rua E, 500', 'Rua E', 'Itaquera');

-- VEÍCULOS

INSERT INTO veiculo (ano, marca, modelo, placa, km_atual, id_cliente, cor) VALUES
(2020, 'Honda', 'CG 160', 'ABC1234', 25000, 1, 'Preta'),
(2022, 'Yamaha', 'Fazer 250', 'DEF5678', 18000, 2, 'Azul'),
(2019, 'Honda', 'Biz 125', 'GHI9012', 32000, 3, 'Vermelha'),
(2023, 'Honda', 'CB 300F', 'JKL3456', 12000, 4, 'Cinza');

-- PEÇAS

INSERT INTO peca
(preco_custo, preco_venda, estoque_minimo, quantidade_estoque, codigo_referencia, descricao_peca)
VALUES
(35.00, 55.00, 5, 12, 'PEC001', 'Filtro de óleo'),
(80.00, 120.00, 3, 2, 'PEC002', 'Pastilha de freio'),
(25.00, 40.00, 5, 15, 'PEC003', 'Vela de ignição'),
(120.00, 180.00, 2, 1, 'PEC004', 'Kit relação'),
(45.00, 70.00, 4, 8, 'PEC005', 'Cabo de embreagem');

-- SERVIÇOS

INSERT INTO servico (nome_servico, preco_padrao, descricao_servico) VALUES
('Troca de óleo', 75.00, 'Substituição do óleo do motor'),
('Revisão geral', 220.00, 'Inspeção geral dos componentes da motocicleta'),
('Regulagem de freios', 90.00, 'Ajuste do sistema de freios'),
('Troca de relação', 150.00, 'Substituição do conjunto de transmissão'),
('Regulagem de válvulas', 120.00, 'Ajuste das válvulas do motor');

-- ORDENS DE SERVIÇO

INSERT INTO ordem_servico
(data_entrada, data_prevista, status_os, defeito_relatado,
 diagnostico_tecnico, prazo_garantia, validade_orcamento,
 forma_pagamento, preco_total, id_veiculo)
VALUES
('2026-10-20 08:00:00', '2026-10-20 17:00:00', 'Concluída',
 'Motor precisando de troca de óleo',
 'Óleo do motor substituído',
 '2027-01-20', '2026-10-30', 'Pix', 150.00, 1),

('2026-10-21 09:00:00', '2026-10-22 17:00:00', 'Concluída',
 'Revisão e barulho nos freios',
 'Revisão realizada e freios regulados',
 '2027-01-21', '2026-10-31', 'Dinheiro', 220.00, 2),

('2026-10-23 10:00:00', '2026-10-23 16:00:00', 'Em manutenção',
 'Freio apresentando problemas',
 'Necessária regulagem do sistema',
 '2027-01-23', '2026-11-02', NULL, 90.00, 3),

('2026-10-25 08:30:00', '2026-10-26 17:00:00', 'Concluída',
 'Problema na transmissão',
 'Conjunto de relação substituído',
 '2027-01-25', '2026-11-04', 'Cartão', 300.00, 4),

('2026-10-27 11:00:00', '2026-10-28 17:00:00', 'Aguardando aprovação',
 'Motor necessita de regulagem',
 NULL,
 '2027-01-27', '2026-11-06', NULL, 120.00, 1);

-- ITENS DAS ORDENS DE SERVIÇO

INSERT INTO item_os_servico
(quantidade, preco_unitario, sub_total, numero_os, id_servico)
VALUES
(2, 75.00, 150.00, 1, 1),
(1, 130.00, 130.00, 2, 2),
(1, 90.00, 90.00, 2, 3),
(1, 90.00, 90.00, 3, 3),
(2, 150.00, 300.00, 4, 4),
(1, 120.00, 120.00, 5, 5);

-- SELECT

-- CONSULTA 01: CLIENTES E SEUS VEÍCULOS

SELECT
    c.nome AS cliente,
    v.marca,
    v.modelo,
    v.placa
FROM cliente c
INNER JOIN veiculo v
    ON c.id_cliente = v.id_cliente;

-- CONSULTA 02: ORDENS DE SERVIÇO E CLIENTES

SELECT
    os.numero_os,
    c.nome AS cliente,
    v.modelo AS veiculo,
    os.data_entrada,
    os.status_os,
    os.preco_total
FROM ordem_servico os
INNER JOIN veiculo v
    ON os.id_veiculo = v.id_veiculo
INNER JOIN cliente c
    ON v.id_cliente = c.id_cliente;

-- CONSULTA 03: SERVIÇOS EXECUTADOS EM CADA ORDEM

SELECT
    os.numero_os,
    s.nome_servico,
    ios.quantidade,
    ios.preco_unitario,
    ios.sub_total
FROM item_os_servico ios
INNER JOIN ordem_servico os
    ON ios.numero_os = os.numero_os
INNER JOIN servico s
    ON ios.id_servico = s.id_servico;

-- UPDATE

-- ATUALIZAÇÃO DA QUANTIDADE DE ESTOQUE DE UMA PEÇA
	
UPDATE peca
SET quantidade_estoque = 10
WHERE codigo_referencia = 'PEC001';

-- ATUALIZAÇÃO DO STATUS DE UMA ORDEM DE SERVIÇO

UPDATE ordem_servico
SET status_os = 'Concluída'
WHERE numero_os = 3;

-- DELETE

-- EXCLUSÃO DO CLIENTE DE TESTE

DELETE FROM cliente
WHERE cpf = '56789012345';

-- Consultas gerenciais

-- G01 — Qual foi o faturamento da oficina por mês?
-- Atende: P1 (acompanhamento financeiro e análise do faturamento mensal)

SELECT
    periodo,
    SUM(faturamento) AS faturamento
FROM (
    SELECT
        DATE_FORMAT(data_entrada, '%Y-%m') AS periodo,
        preco_total AS faturamento
    FROM ordem_servico
    WHERE status_os = 'Concluída'
) AS dados
GROUP BY periodo
ORDER BY periodo;

-- G02 — Quantas ordens de serviço existem em cada situação?
-- Atende: P2 (acompanhamento da demanda e controle das etapas de atendimento)

SELECT
    status_os,
    COUNT(*) AS quantidade_os
FROM ordem_servico
GROUP BY status_os;

-- G03 — Quais são os serviços mais realizados pela oficina?
-- Atende: identificação dos serviços com maior demanda

SELECT
    s.nome_servico,
    SUM(ios.quantidade) AS total_realizado
FROM servico s
INNER JOIN item_os_servico ios
    ON s.id_servico = ios.id_servico
GROUP BY s.id_servico, s.nome_servico
ORDER BY total_realizado DESC;

-- G04 — Quais peças estão com estoque abaixo do mínimo?
-- Atende: P3 (controle de estoque e identificação da necessidade de reposição)

SELECT
    descricao_peca,
    quantidade_estoque,
    estoque_minimo
FROM peca
WHERE quantidade_estoque <= estoque_minimo;

-- G05 — Qual é o valor total dos serviços registrados por cliente?
-- Atende: P4 (acompanhamento do volume financeiro de serviços por cliente)

SELECT
    c.nome AS cliente,
    SUM(ios.sub_total) AS total_servicos
FROM cliente c
INNER JOIN veiculo v
    ON c.id_cliente = v.id_cliente
INNER JOIN ordem_servico os
    ON v.id_veiculo = os.id_veiculo
INNER JOIN item_os_servico ios
    ON os.numero_os = ios.numero_os
GROUP BY c.id_cliente, c.nome
ORDER BY total_servicos DESC;

-- Consultas de auditoria

-- A01 — Existem ordens de serviço sem veículo associado?
-- Atende: RN03 — Vinculação obrigatória. Verifica se todas as ordens de serviço possuem um veículo cadastrado.

SELECT
    os.numero_os,
    os.id_veiculo
FROM ordem_servico os
LEFT JOIN veiculo v
    ON os.id_veiculo = v.id_veiculo
WHERE v.id_veiculo IS NULL;

-- A02 — Existem veículos sem cliente responsável?
-- Atende: RN03 — Vinculação obrigatória. Verifica se todos os veículos possuem um cliente responsável cadastrado.

SELECT
    v.id_veiculo,
    v.modelo,
    v.placa,
    v.id_cliente
FROM veiculo v
LEFT JOIN cliente c
    ON v.id_cliente = c.id_cliente
WHERE c.id_cliente IS NULL;

-- A03 — Quais ordens de serviço estão em manutenção e precisam de validação da aprovação do cliente?
-- Atende: RN01 — Execução mediante aprovação. Permite identificar as ordens em manutenção para conferência da autorização do orçamento.

SELECT
    numero_os,
    data_entrada,
    status_os,
    validade_orcamento,
    preco_total
FROM ordem_servico
WHERE LOWER(status_os) = LOWER('Em Manutenção');

-- A04 — Quais ordens de serviço estão aguardando nova aprovação?
-- Atende: RN05 — Alteração de escopo do serviço. Permite acompanhar as ordens que aguardam autorização do cliente para serviços ou peças adicionais.

SELECT
    numero_os,
    data_entrada,
    status_os,
    defeito_relatado,
    diagnostico_tecnico,
    preco_total
FROM ordem_servico
WHERE LOWER(status_os) = LOWER('Aguardando Nova Aprovação');

-- A05 — Existem ordens de serviço encerradas sem forma de pagamento registrada?
-- Atende parcialmente: RN04 — Liberação de veículo pós quitação. Identifica ordens concluídas sem informação sobre a forma de pagamento.

SELECT
    numero_os,
    status_os,
    preco_total,
    forma_pagamento
FROM ordem_servico
WHERE LOWER(status_os) = LOWER('Concluída')
AND (
    forma_pagamento IS NULL
    OR TRIM(forma_pagamento) = '');

