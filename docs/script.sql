
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

CREATE TEMPORARY TABLE tmp_numeros (
    n INT NOT NULL PRIMARY KEY
);

INSERT INTO tmp_numeros (n)
SELECT
    1 + u.d + (d.d * 10) + (c.d * 100) + (m.d * 1000)
FROM
    (SELECT 0 AS d UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4
     UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9) u
CROSS JOIN
    (SELECT 0 AS d UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4
     UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9) d
CROSS JOIN
    (SELECT 0 AS d UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4
     UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9) c
CROSS JOIN
    (SELECT 0 AS d UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4
     UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9) m
WHERE
    1 + u.d + (d.d * 10) + (c.d * 100) + (m.d * 1000) <= 1300;
    
    INSERT INTO cliente
(nome, cpf, telefone, endereco, logradouro, bairro)
SELECT
    CONCAT('Cliente ', LPAD(n, 3, '0')),
    LPAD(10000000000 + n, 11, '0'),
    CONCAT('119', LPAD(n, 8, '0')),
    CONCAT('Rua ', n, ', ', 100 + n),
    CONCAT('Rua ', n),
    CASE MOD(n, 5)
        WHEN 0 THEN 'São Mateus'
        WHEN 1 THEN 'Itaquera'
        WHEN 2 THEN 'Cidade Tiradentes'
        WHEN 3 THEN 'São Miguel'
        ELSE 'Iguatemi'
    END
FROM tmp_numeros
WHERE n <= 400;

INSERT INTO veiculo
(ano, marca, modelo, placa, km_atual, id_cliente, cor)
SELECT
    2015 + MOD(n, 11),
    CASE MOD(n, 4)
        WHEN 0 THEN 'Honda'
        WHEN 1 THEN 'Yamaha'
        WHEN 2 THEN 'Suzuki'
        ELSE 'Dafra'
    END,
    CASE MOD(n, 6)
        WHEN 0 THEN 'CG 160'
        WHEN 1 THEN 'Biz 125'
        WHEN 2 THEN 'Fazer 250'
        WHEN 3 THEN 'Factor 150'
        WHEN 4 THEN 'CB 300F'
        ELSE 'NMax 160'
    END,
    CONCAT('ABC', LPAD(n, 4, '0')),
    MOD(n * 137, 90000),
    MOD(n - 1, 400) + 1,
    CASE MOD(n, 5)
        WHEN 0 THEN 'Preta'
        WHEN 1 THEN 'Vermelha'
        WHEN 2 THEN 'Azul'
        WHEN 3 THEN 'Branca'
        ELSE 'Cinza'
    END
FROM tmp_numeros
WHERE n <= 450;

INSERT INTO peca
(preco_custo, preco_venda, estoque_minimo,
 quantidade_estoque, codigo_referencia, descricao_peca)
SELECT
    15 + MOD(n * 13, 180),
    15 + MOD(n * 13, 180) + 10 + MOD(n * 7, 80),
    3 + MOD(n, 6),
    CASE MOD(n, 10)
        WHEN 0 THEN 0
        WHEN 1 THEN 1
        WHEN 2 THEN 2
        ELSE 8 + MOD(n * 3, 30)
    END,
    CONCAT('PEC', LPAD(n, 3, '0')),
    CONCAT('Peça para motocicleta ', LPAD(n, 3, '0'))
FROM tmp_numeros
WHERE n <= 50;

INSERT INTO servico
(nome_servico, preco_padrao, descricao_servico)
SELECT
    CASE n
        WHEN 1 THEN 'Troca de óleo'
        WHEN 2 THEN 'Revisão geral'
        WHEN 3 THEN 'Regulagem de freios'
        WHEN 4 THEN 'Troca de relação'
        WHEN 5 THEN 'Regulagem de válvulas'
        WHEN 6 THEN 'Troca de vela'
        WHEN 7 THEN 'Ajuste de embreagem'
        WHEN 8 THEN 'Troca de pastilhas'
        WHEN 9 THEN 'Limpeza de carburador'
        WHEN 10 THEN 'Revisão elétrica'
        WHEN 11 THEN 'Troca de cabos'
        ELSE 'Teste e diagnóstico'
    END,
    CASE n
        WHEN 1 THEN 75.00
        WHEN 2 THEN 220.00
        WHEN 3 THEN 90.00
        WHEN 4 THEN 150.00
        WHEN 5 THEN 120.00
        WHEN 6 THEN 45.00
        WHEN 7 THEN 80.00
        WHEN 8 THEN 70.00
        WHEN 9 THEN 100.00
        WHEN 10 THEN 130.00
        WHEN 11 THEN 65.00
        ELSE 50.00
    END,
    CONCAT('Serviço de manutenção número ', n)
FROM tmp_numeros
WHERE n <= 12;

INSERT INTO ordem_servico
(data_entrada, data_prevista, status_os, defeito_relatado,
 diagnostico_tecnico, prazo_garantia, validade_orcamento,
 forma_pagamento, preco_total, id_veiculo)

SELECT
    TIMESTAMP(
        DATE_ADD(
            '2026-08-03',
            INTERVAL (
                FLOOR((n - 1) * 65 / 990)
                + FLOOR(FLOOR((n - 1) * 65 / 990) / 5) * 2
            ) DAY
        ),
        MAKETIME(8 + MOD(n, 9), MOD(n * 7, 60), 0)
    ),

    DATE_ADD(
        TIMESTAMP(
            DATE_ADD(
                '2026-08-03',
                INTERVAL (
                    FLOOR((n - 1) * 65 / 990)
                    + FLOOR(FLOOR((n - 1) * 65 / 990) / 5) * 2
                ) DAY
            ),
            MAKETIME(8 + MOD(n, 9), MOD(n * 7, 60), 0)
        ),
        INTERVAL (1 + MOD(n, 3)) DAY
    ),

    CASE
        WHEN n <= 594 THEN 'Concluída'
        WHEN n <= 744 THEN 'Em Manutenção'
        WHEN n <= 864 THEN 'Aguardando Aprovação'
        WHEN n <= 930 THEN 'Aguardando Nova Aprovação'
        ELSE 'Cancelada'
    END,

    CASE MOD(n, 6)
        WHEN 0 THEN 'Problema no sistema de freios'
        WHEN 1 THEN 'Motor apresentando ruídos'
        WHEN 2 THEN 'Necessidade de troca de óleo'
        WHEN 3 THEN 'Problema na transmissão'
        WHEN 4 THEN 'Dificuldade na partida'
        ELSE 'Revisão e manutenção preventiva'
    END,

    CASE
        WHEN n <= 744 THEN 'Diagnóstico técnico realizado'
        WHEN n BETWEEN 865 AND 930 THEN 'Identificada necessidade de serviço adicional'
        ELSE NULL
    END,

    DATE_ADD(
        DATE(
            DATE_ADD(
                '2026-08-03',
                INTERVAL (
                    FLOOR((n - 1) * 65 / 990)
                    + FLOOR(FLOOR((n - 1) * 65 / 990) / 5) * 2
                ) DAY
            )
        ),
        INTERVAL 90 DAY
    ),

    DATE_ADD(
        DATE(
            DATE_ADD(
                '2026-08-03',
                INTERVAL (
                    FLOOR((n - 1) * 65 / 990)
                    + FLOOR(FLOOR((n - 1) * 65 / 990) / 5) * 2
                ) DAY
            )
        ),
        INTERVAL 10 DAY
    ),

    CASE
        WHEN n <= 594 AND n NOT IN (100, 200, 300) THEN
            CASE MOD(n, 3)
                WHEN 0 THEN 'Pix'
                WHEN 1 THEN 'Dinheiro'
                ELSE 'Cartão'
            END
        ELSE NULL
    END,

    0.00,

    MOD(n - 1, 350) + 1

FROM tmp_numeros
WHERE n <= 990;

INSERT INTO item_os_servico
(quantidade, preco_unitario, sub_total, numero_os, id_servico)

SELECT
    1 + MOD(n, 2),

    ROUND(
        s.preco_padrao * (0.90 + MOD(n, 5) * 0.05),
        2
    ),

    ROUND(
        (1 + MOD(n, 2)) *
        s.preco_padrao * (0.90 + MOD(n, 5) * 0.05),
        2
    ),

    CASE
        WHEN n <= 990 THEN n
        ELSE n - 990
    END,

    s.id_servico

FROM tmp_numeros t

INNER JOIN servico s
    ON s.id_servico = MOD(t.n - 1, 12) + 1

WHERE t.n <= 1300;

UPDATE ordem_servico os

INNER JOIN (
    SELECT
        numero_os,
        SUM(sub_total) AS total_calculado
    FROM item_os_servico
    GROUP BY numero_os
) itens
    ON os.numero_os = itens.numero_os

SET os.preco_total = itens.total_calculado;

DROP TEMPORARY TABLE IF EXISTS tmp_numeros;

-------------------------------------------------------------------------------------------

-- SELECT

-- Ordens por status

SELECT status_os, COUNT(*) AS quantidade
FROM ordem_servico
GROUP BY status_os;

-- Clientes sem ordens de serviço

SELECT c.id_cliente, c.nome
FROM cliente c
LEFT JOIN veiculo v ON c.id_cliente = v.id_cliente
LEFT JOIN ordem_servico os ON v.id_veiculo = os.id_veiculo
WHERE os.numero_os IS NULL;

-- Peças abaixo do estoque mínimo

SELECT descricao_peca, quantidade_estoque, estoque_minimo
FROM peca
WHERE quantidade_estoque < estoque_minimo;

-- Diferentes formas de pagamento

SELECT forma_pagamento, COUNT(*) AS quantidade
FROM ordem_servico
WHERE status_os = 'Concluída'
GROUP BY forma_pagamento;

-- Ordens por mês

SELECT
    DATE_FORMAT(data_entrada, '%Y-%m') AS periodo,
    COUNT(*) AS quantidade
FROM ordem_servico
GROUP BY DATE_FORMAT(data_entrada, '%Y-%m')
ORDER BY periodo;


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

-- UPDATE - Objetivo: alterar o status de uma OS existente

UPDATE ordem_servico
SET status_os = 'Em Manutenção'
WHERE numero_os = (
    SELECT numero_os
    FROM (
        SELECT os.numero_os
        FROM ordem_servico os
        INNER JOIN veiculo v
            ON os.id_veiculo = v.id_veiculo
        INNER JOIN cliente c
            ON v.id_cliente = c.id_cliente
        WHERE os.status_os = 'Aguardando Aprovação'
        ORDER BY os.numero_os
        LIMIT 1
    ) AS consulta
);

-- Conferir alteração

SELECT
    c.nome,
    v.placa,
    os.numero_os,
    os.status_os
FROM ordem_servico os
INNER JOIN veiculo v
    ON os.id_veiculo = v.id_veiculo
INNER JOIN cliente c
    ON v.id_cliente = c.id_cliente
WHERE os.status_os = 'Em Manutenção'
ORDER BY os.numero_os;

-- DELETE - Objetivo: remover um serviço vinculado a uma ordem de serviço

DELETE FROM item_os_servico
WHERE id_item_servico = (
    SELECT id_item_servico
    FROM (
        SELECT ios.id_item_servico
        FROM item_os_servico ios
        INNER JOIN ordem_servico os
            ON ios.numero_os = os.numero_os
        INNER JOIN veiculo v
            ON os.id_veiculo = v.id_veiculo
        INNER JOIN cliente c
            ON v.id_cliente = c.id_cliente
        ORDER BY ios.id_item_servico DESC
        LIMIT 1
    ) AS consulta
);

-- Conferir exclusão

SELECT *
FROM item_os_servico
ORDER BY id_item_servico DESC
LIMIT 10;

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

