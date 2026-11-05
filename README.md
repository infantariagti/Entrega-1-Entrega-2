
# Entrega 2 — Modelo-Lógico, Implementação SQL e Apresentação Final

### Integrantes

| Nome completo do aluno     | RGM          | Usuário do GitHub             |
| :----                      | :----        | :----                         |
|Guilherme da Silva Lima     | RGM: 47585277| guilhermelimatricolor2008-code|
|Kaiky hamada                | RGM: 47210486| kaikyhamada23-crypto          |
|Lucas Pereira Andre         | RGM: 46614397| lucaspereiraandre780-dot      |
|Paulo Renato Sobral da Silva| RGM: 46763902| Renato1jj                     |
|Ricardo Naoto Arakaki       | RGM: 46786619| arakakilenda                  |

&nbsp;

### 1.1 Revisão do Modelo Conceitual

**Caracterização da organização (todos os grupos)**

- **Nome e natureza da organização:** Jackson Moto Peças, Oficina Mecânica
  
- **Contexto e porte:** A empresa lucra entre R$10-16k com porte pequeno com apenas 2 funcionários e por dia variando entre 10 a 20 motos para conserto e um resultado de 6 a 12 motos finalizadas por dia com problemas simples. Agendamento presencial com teste do veículo para trabalho.
  
- **Problemas e necessidades identificados:** Ausência de comunicação flexível entre funcionário e cliente, necessitando de um suporte de controle para gerenciamento da fila de espera dos clientes e seus veículos.
  
- **Escopo do sistema:** O escopo do sistema centraliza e organiza as informações gerais da oficina, tambem faz parte o cadastro de clientes e motocicletas, o gerenciamento de atendimentos e ordens de serviço, o controle de orçamentos, serviços realizados, estoque de peças, pagamentos e garantias.
  
- **Justificativa da escolha:** notável que maioria dos casos a comunicação do mecânico e o cliente é limitada, devido ao excesso e escasso tempo do mecânico para manusear seu tempo com agendas, o objetivo é equilibrar o atendimento de forma que o cliente consiga fazer um autoatendimento enquanto reduz o trabalho do mecânico de parar de trabalhar em outro veículo para prestar atenção ao novo cliente e seu problema.
  
- **Evidências da organização:** Av. Primavera de Caiena, 28 - Parque Santa Madalena, São Paulo - SP, 03981-010 - site: "https://paramim.my.canva.site/jackson-moto-pe-as" e rede social "https://www.instagram.com/jacksonmotosoficial?utm_source=qr&igsh=MXY5eDA4a2NyOTV1bQ%3D%3D" (fotos de evidências anexadas dentro do repositorio)
  
- **Responsável pela organização:** **Jackson(Proprietario) - 11 96067-0539**

**Relato da entrevista (todos os grupos)**

- **Quem:**  Agata (Gerente) - Lucas Pereira Andre, Paulo Renato Sobral Da Silva (Grupo).
  
- **Quando e onde:** 22/10/26-9h12/9h40 & 04/11/26-8h50/9h10 — Múltiplos clientes surgem antes da oficina abrir, agendamento presencialmente tudo feito a mão, onde o próprio cliente lembra o Mecânico de ser atendido, o atendimento funciona como uma fila, quem chega primeiro é atendido primeiro, mas em questão de problemas mais graves, a uma certa prioridade do mecanico.
  
- **Comprovação:**  https://github.com/infantariagti/Entrega-1-Entrega-2/blob/Entrega-2-Modelo-Lógico%2C-Implementação-SQL-e-Apresentação-Final/Foto%20-%20Jackson%20motopeças%201.jpg E https://github.com/infantariagti/Entrega-1-Entrega-2/blob/Entrega-2-Modelo-Lógico%2C-Implementação-SQL-e-Apresentação-Final/Foto%20-%20Jackson%20motopeças%202.jpg
  
- **O que foi levantado:** - https://github.com/infantariagti/Entrega-1-Entrega-2/blob/Entrega-2-Modelo-Lógico%2C-Implementação-SQL-e-Apresentação-Final/levantamento/levantamento.md

**Nível de detalhe — processos, requisitos e regras de negócio (todos os grupos)**

*Frases genéricas como "o sistema deve permitir cadastrar cliente" são **superficiais** e não bastam. Em processos, requisitos e regras, indique **quais dados** estão envolvidos — todos os campos que aparecem no trabalho (DER, dicionário de dados, modelo lógico):*

| Superficial | Detalhado |
| :---- | :---- |
| *O sistema deve permitir cadastrar cliente.* | *RF03 — O sistema deve permitir cadastrar cliente com nome completo, CPF, telefone, e-mail e endereço (logradouro, número, bairro, CEP).* |
| *O cliente faz o pedido.* | *O garçom anota no pedido a mesa, o número da pulseira do cliente e, para cada item, o produto, a quantidade e as observações.* |
| *O cliente precisa estar cadastrado.* | *RN05 — Todo cliente deve ter CPF válido e único; telefone e nome completo são obrigatórios.* |

&nbsp;

**Processos de negócio (todos os grupos)**

**principais processos mapeados** na organização — A empresa não trabalha com sistema de cadastro, o controle de estoque é anotado tudo via WhatsApp. A venda das peças é incluso ao serviço prestado. A emissao de entrega e solicitações é manual, onde a gerente busca sozinha sites, contatos e endereços do comercio. Eles integram a venda de produtos ao serviço prestado da moto, sem distribuições. Nao ha organizações, eventos ou multirões.

- **Levante os processos típicos do tipo de organização.** Triagem e inspeção inicial do veículo, diagnóstico técnico do problema, cotação de peças e aprovação do orçamento com o cliente, execução de serviços rápidos de rotina e reparos complexos, controle e organização física do pátio da oficina, compra de peças sob demanda com fornecedores parceiros, e o teste final de qualidade seguido da entrega do veículo.
- 
- **Inclua os processos que existem na organização** Recebe mensagens do cliente via WhatsApp: Cliente entra em contanto com a oficina pedindo informações a respeito dos procedimentos a serem realizados com a motocicleta
Agendamento via WhatsApp: O processo de agendamento é feito por WhatsApp a partir de mensagens (registo principal de agendamento da empresa em questão)
Recebimento da motocicleta: Cliente leva a motocicleta até a oficina como conversado no WhatsApp
Inspeção da motocicleta: Mecânico realiza a inspeção previa conforme problemas relatados pelo cliente
Orçamento: Identificação dos serviços necessários, peças e valores.
Aprovação do orçamento: Autorização do cliente para execução dos serviços.
Combina quando vai ser retirado: Realiza a conversa via WhatsApp para informar ao cliente uma data e horário prevista para finalização do serviço
Execução do serviço: Realização da manutenção ou reparo pelos mecânicos.
Finalização e entrega: Conferência do serviço, pagamento e devolução da motocicleta ao cliente.

- **Justifique os processos prováveis não incluídos:** raramente a casos de desistência do cliente devido a alta demanda de motos ja agendadas.

**Requisitos (todos os grupos)**

- **Requisitos Funcionais:**

| Código | Requisito                                                                                                                                                                                       |
| :----  | :----                                                                                                                                                                                           |
| RF01   | Cadastrar cliente com nome, telefone/WhatsApp, CPF e endereço (logradouro, bairro).                                                                                                             |
| RF02   | Cadastrar moto vinculada a um cliente, com placa, marca, modelo, ano, cor e quilometragem.                                                                                                      |
| RF03   | Abrir e atualizar OS com data de entrada, defeito relatado, diagnóstico, status (Aguardando Aprovação, Em Manutenção, Pronta, Entregue) e previsão de entrega.                                  |
| RF04   | Registrar o recebimento de peças (peça, quantidade, valor de custo), somando ao saldo do estoque, e registrar automaticamente a garantia de 90 dias a partir da data de saída ao encerrar a OS. |
| RF05   | Cadastrar peças (nome, código/referência, custo, venda, quantidade em estoque, estoque mínimo) e baixar o saldo ao fechar a OS.                                                                 |
| RF06   | Lançar serviços (mão de obra) na OS, com quantidade e preço praticado.                                                                                                                          |
| RF07   | Calcular o total do orçamento (peças + serviços) e permitir visualizar/imprimir para validação do cliente.                                                                                      |
| RF08   | Registrar pagamento (Pix, dinheiro, cartão de débito ou crédito) e marcar a OS como paga.                                                                                                       |
| RF09   | Consultar o histórico de OS por placa ou por cliente.                                                                                                                                           |
| RF10   | Alertar quando peças de alto giro atingirem o estoque mínimo.                                                                                                                                   |
| RF11   | Contas a pagar: registrar compras de peças e insumos com descrição, valor, data da compra, vencimento e situação (Pendente/Pago).                                                               |

- **Requisitos Não Funcionais:**

| Código | Requisito                                                                                       |
| :----  | :----                                                                                           |
| RNF01  | Usabilidade: interface simples; cadastro de atendimento em menos de 2 minutos.                  |
| RNF02  | Desempenho: busca por cliente ou placa em menos de 2 segundos.                                  |
| RNF03  | Integridade: não excluir clientes ou motos com OS ativa ou histórico.                           |
| RNF04  | Backup periódico (local ou nuvem).                                                              |
| RNF05  | Compatibilidade: rodar em computador básico, via navegador.                                     |
| RNF06  | Validação de entrada: máscara de CPF, padrão de telefone e placa (antiga e Mercosul).           |
| RN07   | Recuperação: o backup (RNF04) deve ter teste de restauração periódico e definição de frequência.|

Boa parte do levantamento de requisitos utilizando a IA para análise e verificar a possibilidade inclusão de novos requisitos, seria o requisito não funcional RNF07	Recuperação: o backup (RNF04) deve ter teste de restauração periódico e definição de frequência. Porque é feito tudo visualmente sem consulta de estoque, as compras são feitas direto no local.

O requisito funcional RF12	Registrar o checklist de entrada da moto (avarias visíveis, itens deixados, nível de combustível, quilometragem), de acordo com mecanico esse processo não é verificado, apenas a análise e diagnostico, de acordo com as informações do cliente.

**Regras de negócio (todos os grupos)**

- **Regras Operacionais**
  
RN01 - Execução mediante aprovação: Uma Ordem de Serviço (OS) só pode ter seu status alterado para "Em Manutenção" após a autorização e validação explícita do cliente sobre o orçamento gerado.

RN02 - Disponibilidade e baixa de estoque: Uma peça só pode ser incluída na OS se houver saldo disponível em estoque. A baixa física/sistêmica ocorre automaticamente no momento do encerramento da OS.

RN03 - Vinculação obrigatória: Toda OS deve estar obrigatoriamente associada a um veículo cadastrado, e todo veículo precisa ter um cliente responsável vinculado no sistema.

RN04 - Liberação de veículo pós quitação: O encerramento definitivo da OS e a liberação do veículo só podem ser realizados após o registro da quitação do valor total (Pix, dinheiro ou cartão).

RN05 - Alteração de escopo do serviço: Se o mecânico identificar a necessidade de peças ou serviços adicionais durante o conserto, a OS deve entrar em status "Aguardando Nova Aprovação" até a autorização do cliente.

- **Restrições Organizacionais**
  
RO01 - Operação enxuta e perfis de acesso: O sistema deve oferecer telas simplificadas e separadas por perfil (a esposa no atendimento/financeiro e o mecânico no pátio), garantindo rapidez para não travar a rotina de apenas duas pessoas.

RO02 - Conformidade com CDC (Garantia e Validade): Por exigência legal do Código de Defesa do Consumidor, os orçamentos emitidos pelo sistema devem exibir validade padrão de 10 dias e as OS concluídas devem registrar automaticamente prazo de garantia de 90 dias.

RO03 - Política de quitação imediata: Por diretriz da administração, a oficina não trabalha com pagamentos faturados via boleto próprio ou promissórias ("fiado"); o sistema deve restringir o fechamento a meios de pagamento de liquidação imediata ou cartão.

RO04 - Adequação à LGPD: O armazenamento dos dados cadastrais (CPF, telefone, endereço) deve servir estritamente para emissão de comprovantes e comunicação sobre o status da moto, garantindo a privacidade do cliente.

Agendamento: capacidade diária / não comparecimento	Agendamento	Ausente: o agendamento não se limita à entrega da moto, e não há regra formal de não comparecimento relatada. A capacidade do local é de 30 motos, mas não há limite diário de agendamentos formalizado.

Moto não retirada no prazo (estadia)	Entrega	Ausente: o prazo de reparo é de até 2 dias, e problemas complexos ficam sem prazo definido. Sem prazo fixo, não há como estabelecer regra de estadia ou cobrança por permanência.

Compra de peças: fornecedor e conferência	Compras	Ausente: a compra é feita direto com o distribuidor, com a oficina comparecendo à loja ou ao local. Não há prazo de entrega nem fornecedor formal a controlar, logo não há regra de conferência de recebimento.

Emissão de nota fiscal	Pagamento	Ausente: a oficina não emite nota fiscal, pois considera o processo muito burocrático. A regra não se aplica à operação atual.

**Notação do DER conceitual (todos os grupos — Caso A e Caso B)**

*O DER deve seguir a notação do **brModelo**, como no exemplo abaixo:*

<img width="1645" height="956" alt="DER" src="https://github.com/user-attachments/assets/5f6ded78-86b0-4c9d-ba9f-e68d783e8ca1" />

| Elemento | Como aparece | No exemplo |
| :---- | :---- | :---- |
| **Entidade** | retângulo | `CLIENTE, VEICULO, ORDEM_SERVICO, PECA e SERVICO ` |
| Entidade associativa | Retângulo associado a um relacionamento | `ITEM_OS_SERVICO` |
| **Relacionamento** | losango | `Rel, Gera, Contém e Executa` |
| **Cardinalidade mínima e máxima** | par `(mín, máx)` dos dois lados de cada relacionamento | `(0,N), (1,1) e (1,N)` |
| **Atributo identificador (chave)** | círculo **preenchido** |  `ID_Cliente`, `Placa`, `Numero_OS`, `ID_Peça` e `ID_Serviço` |
| **Identificador composto** | Mais de um atributo identificador na mesma entidade | Não utilizado no DER atual |
| **Atributo comum** | círculo **vazio** | `Modelo`, `Marca`, `Ano`, `Cor` e `Preço_Padrão` |
| **Atributo multivalorado** |  Círculo com cardinalidade máxima N  | `Defeito_Relatado e Diagnostico_Tecnico` |
| **Atributo composto** *(representação gráfica opcional)* | Atributo com seus próprios subatributos | `Endereço`, `composto por Logradouro e Bairro` |
| **Generalização/especialização** | Triângulo ligando entidades. **A indicação de totalidade e disjunção não é obrigatória** | Não utilizada no DER atual |
| Autorrelacionamento | Losango ligado duas vezes à mesma entidade | Não utilizado no DER atual |

**Observação:** A entidade associativa ITEM_OS_SERVICO permite registrar informações específicas de cada serviço executado em uma Ordem de Serviço, como quantidade, preço unitário e subtotal.

&nbsp;

- **Representação gráfica opcional:** atributos compostos podem ser desenhados como no exemplo (subatributos ligados ao atributo), mas não é obrigatório; o mesmo vale para a indicação de totalidade/disjunção da generalização/especialização.  
- **Atributos de entidades:** podem ser representados como no brModelo (círculos ligados à entidade, como no exemplo) **ou** listados dentro do retângulo da entidade — nesse caso, o **identificador deve estar sublinhado**.  
- **Atributos de relacionamentos e de entidades associativas:** **somente** como no brModelo, ligados ao losango ou à entidade associativa (como `Attribute 530`) — não podem ser listados dentro de um retângulo.  
- **Sem chaves estrangeiras** — elas só aparecem no modelo lógico (seção 2).

*Informe no README **em qual software ou aplicativo o DER foi criado**.*

**Caso A — mesma organização da Entrega 1**

| Apontamento da correção da E1 | O que mudou no trabalho | Por quê |
| :---- | :---- | :---- |
| Agendamento: capacidade diária / não comparecimento (ausente) | Não incluído como regra de negócio no modelo. | A oficina realiza agendamentos principalmente pelo WhatsApp, mas não possui limite diário formalizado nem política definida para não comparecimento. |
| Entrega: moto não retirada no prazo (estadia) (ausente) | Não incluído como regra de negócio. | A oficina trabalha com previsão de até dois dias para reparos simples, enquanto serviços complexos não possuem prazo fixo. Não existe política formal de cobrança por permanência. |
| Compras: fornecedor e conferência (ausente) | Não foi criada entidade FORNECEDOR. O RF04 foi detalhado para registrar o recebimento de peças e atualizar o estoque. | As compras são realizadas diretamente com distribuidores, sem processo formal de cadastro de fornecedores ou controle de prazo de entrega. |
| Pagamento: emissão de nota fiscal (ausente) | Não incluído como funcionalidade do sistema. | Conforme informado no levantamento, a oficina não realiza emissão de nota fiscal em sua operação atual. |
| Processos: recebimento de peças, estoque e garantia | RF04 foi detalhado para contemplar o recebimento de peças, atualização automática do estoque e registro de garantia de 90 dias. | RF04 foi detalhado para contemplar o recebimento de peças, atualização automática do estoque e registro de garantia de 90 dias. |
| Processos: compras e contas a pagar | RF11 foi incluído como melhoria, permitindo registrar compras, valores, datas de vencimento e situação dos pagamentos. | A funcionalidade permite acompanhar despesas da oficina, valores pendentes e pagamentos realizados.

&nbsp;

### 1.2 Conversão do Modelo Conceitual para o Modelo Lógico

- **Entidades → Tabelas:** *como cada entidade virou tabela.*  
- **Atributos → Colunas:** *conversão correta dos atributos.*  
- **Relacionamentos → Chaves:** *como os relacionamentos foram traduzidos.*  
- **Cardinalidades:** *como cada cardinalidade (1:1, 1:N, N:N) foi tratada (inclusive tabelas associativas, se houver).*  
- **Generalização/especialização:** *se o DER tiver, qual estratégia de conversão foi usada (tabela única, uma tabela por entidade ou só as especializadas) e por quê.*

### 1.3 Definição de Chaves Primárias e Estrangeiras

*Liste as PKs e FKs de cada tabela (serve de base para a justificativa técnica abaixo).*

### 1.4 Processo de Normalização (1FN, 2FN e 3FN)

- **1FN:** `endereco` + `logradouro` + `bairro` no mesmo cliente duplicam informação; ficar só com colunas atômicas. Peças e serviços não ficam dentro da OS (vão para as tabelas de itens).
- **2FN:** nas tabelas de itens, `quantidade` e `preco_praticado` dependem da combinação OS + peça/serviço, e não só de um dos lados. Dados da peça (descrição, custo) ficam em PECA.
- **3FN:** `preco_total` (soma dos itens), `validade_orcamento` (entrada + 10 dias) e `prazo_garantia` (saída + 90 dias) são calculáveis. Decidir: calcular em consulta/visão (3FN pura) ou guardar e justificar. O mesmo vale para `sub_total` em ITEM_OS_SERVICO. 
- **Justificativa do processo:** *O processo de normalização é aplicado da seguinte forma: na 1ª Forma Normal, removem-se as tabelas e grupos que se repetem. Na 2ª Forma Normal, a seção de itens (contendo quantidade e preco_unificado) passa para uma nova tabela. Já na 3ª Forma Normal, eliminam-se os campos calculáveis para evitar redundância de dados.*

### 1.5 Justificativas Técnicas das Decisões

- Justificar as **chaves primárias** escolhidas.  
- Justificar as **chaves estrangeiras** e os relacionamentos que elas implementam.  
- Justificar as **restrições** aplicadas (unicidade, obrigatoriedade, valores permitidos etc.), citando o código da regra de negócio (`RNxx`) que cada restrição implementa, quando houver.  
- Justificar **decisões arquiteturais** gerais do modelo.

### 1.6 Proposta de Arquitetura Analítica para BI e IA

- **Informações estratégicas** que podem ser extraídas dos dados para a gestão da organização.  
- **Indicadores e métricas gerenciais** propostos (KPIs).  
- **Potencial dos dados para BI:** como a estrutura apoia dashboards/relatórios.  
- **Aplicações analíticas e de IA:** como o modelo pode alimentar análises preditivas, recomendações etc.

**Rastreabilidade:** inclua uma tabela que ligue cada problema declarado na caracterização da organização e cada KPI proposto às tabelas que o sustentam e à consulta do script SQL que o responde (pelo código da consulta — ver seção 3):

| Problema ou KPI | Tabelas envolvidas | Consulta no script |
| :---- | :---- | :---- |
| *P1 — Faturamento Total Mensal* | *Soma dos pagamentos confirmados por mês* | | PAGAMENTO, ORDEM_SERVICO|  *G01* |
| *P2 — Volume de OS Finalizadas por Semana* | *Contagem de OS com status "Entregue" por período* | ORDEM_SERVICO | | *G2* |
| *P3 — Ruptura de Estoque (Peças Abaixo do Mínimo)* | *Contagem de peças cujo estoque atual é menor ou igual ao mínimo* | PECA | | *G03* |
| *P4 — Ticket Médio por Ordem de Serviço* | *Faturamento total dividido pelo número de OS finalizadas no mês*| | ORDEM_SERVICO, ITEM_OS_SERVICO, ITEM_OS_PECA |  | *G04* |

&nbsp;

*KPI sem consulta no script que o calcule não é considerado KPI. Cada problema declarado deve ter pelo menos uma consulta que o responda.*

**O que é KPI:** *Key Performance Indicator* (indicador-chave de desempenho) é um número que mostra, de forma objetiva, se a organização está indo bem em algo que importa para a gestão dela. Um KPI tem **fórmula** (como é calculado), **período** (por dia, semana, mês) e, de preferência, uma **meta** para comparação. Exemplos: ticket médio por venda, taxa de cancelamento de pedidos, produtos abaixo do estoque mínimo, tempo médio de atendimento, número de beneficiários atendidos por mês, percentual de doações recorrentes. "Melhorar o atendimento" não é KPI; "tempo médio entre o pedido e a entrega, por semana" é.

> **Como levantar:** é recomendável usar pesquisas e ferramentas de IA para descobrir quais indicadores são usados por organizações do mesmo tipo (ex.: "principais KPIs de uma pizzaria", "indicadores de gestão de uma ONG de doação de alimentos") e quais análises de BI e de IA costumam ser aplicadas a elas. Depois, **filtre pelo que o seu banco consegue calcular**: um KPI só vale se as tabelas do modelo tiverem os dados necessários e se houver uma consulta no script que o calcule (ver *Rastreabilidade*, abaixo). Se possível, confirme com o responsável pela organização quais indicadores seriam úteis para ele. Registre esse uso de IA na seção 6\.

---

## 2\. Modelo Lógico Relacional

Software utilizado: brModelo 3.0 — elaboração do diagrama do Modelo Lógico Relacional.

| Elemento | Como aparece | No exemplo |
| :---- | :---- | :---- |
| **Tabela** | Retângulo com o nome da tabela no topo e uma linha por coluna | `cliente`, `veiculo`, `ordem_servico`, `peca`, `servico` e `item_os_servico` |
| **Coluna** | Nome da coluna, à esquerda, com o tipo de dado à direita | `ID_Cliente` — `INT`, `Nome` — `VARCHAR`, `CPF` — `CHAR`, `Telefone` — `VARCHAR`, `Endereço` — `VARCHAR`, `Logradouro` — `VARCHAR` e `Bairro` — `VARCHAR`, em `cliente`; `ID_Veiculo` — `INT`, `Ano` — `INT`, `Marca` — `VARCHAR`, `Modelo` — `VARCHAR`, `Placa` — `VARCHAR`, `KM_atual` — `INT`, `ID_Cliente` — `INT` e `Cor` — `VARCHAR`, em `veiculo`; `Numero_OS` — `INT`, `Data_entrada` — `DATETIME`, `Data_prevista` — `DATETIME`, `Status_OS` — `VARCHAR`, `Defeito_relatado` — `VARCHAR`, `Diagnostico_Tecnico` — `VARCHAR`, `Prazo_garantia` — `DATE`, `Validade_orcamento` — `DATE`, `Forma_pagamento` — `VARCHAR`, `Preco_total` — `FLOAT` e `ID_Veiculo` — `INT`, em `ordem_servico`; `ID_Peca` — `INT`, `Preco_Custo` — `FLOAT`, `Preco_Venda` — `FLOAT`, `Estoque_Minimo` — `INT`, `Quantidade_Estoque` — `INT`, `Codigo_Referencia` — `VARCHAR` e `Descricao_Peca` — `VARCHAR`, em `peca`; `ID_Servico` — `INT`, `Nome_Servico` — `VARCHAR`, `Preco_Padrao` — `FLOAT` e `Descricao_Servico` — `VARCHAR`, em `servico`; `ID_Item_Servico` — `INT`, `Quantidade` — `INT`, `Preco_Unitario` — `FLOAT`, `Sub_Total` — `FLOAT`, `Numero_OS` — `INT` e `ID_Servico` — `INT`, em `item_os_servico`. |
| **Chave primária** | Marca `PK` ao lado do tipo | `ID_Cliente` — `PK INT`, em `cliente`; `ID_Veiculo` — `PK INT`, em `veiculo`; `Numero_OS` — `PK INT`, em `ordem_servico`; `ID_Peca` — `PK INT`, em `peca`; `ID_Servico` — `PK INT`, em `servico`; `ID_Item_Servico` — `PK INT`, em `item_os_servico`. |
| **Chave estrangeira** | Marca `FK` ao lado do tipo | `ID_Cliente` — `FK INT`, em `veiculo`; `ID_Veiculo` — `FK INT`, em `ordem_servico`; `Numero_OS` — `FK INT`, em `item_os_servico`; `ID_Servico` — `FK INT`, em `item_os_servico`. |
| **Coluna que é chave primária e estrangeira** | Não existe no modelo atual | Não existe no modelo atual. |
| **Ligação entre tabelas** | Linha entre a tabela da FK e a tabela referenciada, com a cardinalidade `(mín, máx)` em cada ponta | `cliente` — `veiculo`; `veiculo` — `ordem_servico`; `ordem_servico` — `item_os_servico`; `servico` — `item_os_servico`. |

&nbsp;

---

## 3\. Script SQL Completo

**SGBD:** MySQL — https://github.com/infantariagti/Entrega-1-Entrega-2/blob/Entrega-2-Modelo-Lógico,-Implementação-SQL-e-Apresentação-Final/docs/script.sql

&nbsp;

---

## 4\. Massa de Dados

(Massa de dados incluída junto ao script - https://github.com/infantariagti/Entrega-1-Entrega-2/blob/Entrega-2-Modelo-Lógico,-Implementação-SQL-e-Apresentação-Final/docs/script.sql)

---

## 6\. Uso de Inteligência Artificial

*(documentação obrigatória — não é opcional se o grupo usou IA em qualquer etapa: pesquisa, levantamento de processos, requisitos e regras típicos, escrita, organização de ideias, revisão de texto, geração de massa de dados ou apoio a scripts SQL)*

Para cada uso relevante de ferramenta de IA (ChatGPT, Claude, Gemini, Perplexity etc.), registre:

| Item | O que registrar |
| :---- | :---- |
| **Ferramenta e etapa** | Qual IA foi usada e em qual parte do trabalho Gemini e Claude IA(Anthropic): Normalização, levantamento de requisitos típicos em oficina mecânica |
| **Motivação** | No ponto de levantamento de requisitos algumas informações básicas de controle de ordens de serviço básicas ou superior, mas levando em consideração na parte da entrevista, ajustes de novos requisitos funcionais e não funcionais |
| **Prompt(s) utilizados** | Com base nos requisitos funcionais e não funcionais, teria outros requisitos a serem considerados, segue a seguir: **Requisitos Funcionais:** 
 | Código | Requisito | | :---- | :---- | | RF01 | Cadastrar cliente com nome, telefone/WhatsApp, CPF e endereço (logradouro, bairro). |

| RF02 | Cadastrar moto vinculada a um cliente, com placa, marca, modelo, ano, cor e quilometragem. |

| RF03 | Abrir e atualizar OS com data de entrada, defeito relatado, diagnóstico, status (Aguardando Aprovação, Em Manutenção, Pronta, Entregue) e previsão de entrega. |

| RF04 | Registrar o recebimento de peças (peça, quantidade, valor de custo), somando ao saldo do estoque, e registrar automaticamente a garantia de 90 dias a partir da data de saída ao encerrar a OS. |

| RF05 | Cadastrar peças (nome, código/referência, custo, venda, quantidade em estoque, estoque mínimo) e baixar o saldo ao fechar a OS. |

| RF06 | Lançar serviços (mão de obra) na OS, com quantidade e preço praticado. |

| RF07 | Calcular o total do orçamento (peças + serviços) e permitir visualizar/imprimir para validação do cliente. |

| RF08 | Registrar pagamento (Pix, dinheiro, cartão de débito ou crédito) e marcar a OS como paga. |

| RF09 | Consultar o histórico de OS por placa ou por cliente. |

| RF10 | Alertar quando peças de alto giro atingirem o estoque mínimo. |

| RF11 | Contas a pagar: registrar compras de peças e insumos com descrição, valor, data da compra, vencimento e situação (Pendente/Pago). |

    **Requisitos Não Funcionais:** | Código | Requisito | | :---- | :---- |

| RNF01 | Usabilidade: interface simples; cadastro de atendimento em menos de 2 minutos. |

| RNF02 | Desempenho: busca por cliente ou placa em menos de 2 segundos. |

| RNF03 | Integridade: não excluir clientes ou motos com OS ativa ou histórico. |

| RNF04 | Backup periódico (local ou nuvem). |

| RNF05 | Compatibilidade: rodar em computador básico, via navegador. |

| RNF06 | Validação de entrada: máscara de CPF, padrão de telefone e placa (antiga e Mercosul). |

| RF01 | Cadastrar cliente com nome, telefone/WhatsApp, CPF e endereço (logradouro, bairro). |

| RF02 | Cadastrar moto vinculada a um cliente, com placa, marca, modelo, ano, cor e quilometragem. |

| RF03 | Abrir e atualizar OS com data de entrada, defeito relatado, diagnóstico, status (Aguardando Aprovação, Em Manutenção, Pronta, Entregue) e previsão de entrega. |

| RF04 | Registrar o recebimento de peças (peça, quantidade, valor de custo), somando ao saldo do estoque, e registrar automaticamente a garantia de 90 dias a partir da data de saída ao encerrar a OS. |

| RF05 | Cadastrar peças (nome, código/referência, custo, venda, quantidade em estoque, estoque mínimo) e baixar o saldo ao fechar a OS. |

| RF06 | Lançar serviços (mão de obra) na OS, com quantidade e preço praticado. |

| RF07 | Calcular o total do orçamento (peças + serviços) e permitir visualizar/imprimir para validação do cliente. |

| RF08 | Registrar pagamento (Pix, dinheiro, cartão de débito ou crédito) e marcar a OS como paga. |

| RF09 | Consultar o histórico de OS por placa ou por cliente. |

| RF10 | Alertar quando peças de alto giro atingirem o estoque mínimo. |

| RF11 | Contas a pagar: registrar compras de peças e insumos com descrição, valor, data da compra, vencimento e situação (Pendente/Pago). |

    **Requisitos Não Funcionais:** | Código | Requisito | | :---- | :---- |

| RNF01 | Usabilidade: interface simples; cadastro de atendimento em menos de 2 minutos. |

| RNF02 | Desempenho: busca por cliente ou placa em menos de 2 segundos. |

| RNF03 | Integridade: não excluir clientes ou motos com OS ativa ou histórico. |

| RNF04 | Backup periódico (local ou nuvem). |

| RNF05 | Compatibilidade: rodar em computador básico, via navegador. |

| RNF06 | Validação de entrada: máscara de CPF, padrão de telefone e placa (antiga e Mercosul). |

Poderia reorganizar as informações do arquivo readme.md, coloquei mais informações porem ficou muito confuso.

Com base sobre o que é KPI, ajude a estruturar os arquivos anexados.

    **Levante os requisitos típicos do tipo de organização.** Assim como nos processos, é recomendável usar pesquisas e ferramentas de IA para descobrir quais requisitos funcionais e não funcionais são comuns em sistemas de organizações semelhantes e conferir se eles se aplicam à organização escolhida — o que pode exigir confirmação com o responsável. Registre esse uso de IA na seção 6\. |
| **Resposta recebida** | Resumo dos pontos a resolver no README:

Problemas e porte: estavam com o texto repetido. Separei o porte em números e propus P1 a P5 como rascunho. Confirmem com o Jackson, pois cada problema precisa de ao menos uma consulta G no script.
Agendamento: o README diz “presencial” e a E1 diz “WhatsApp”. Definam qual é o correto.
Compras x RF11: compra de peças está como processo ausente, mas o RF11 registra compras. Ou entra a tabela CONTA_PAGAR no DER, ou o RF11 sai.
Fotos: precisam ser JPG/PNG dentro do repositório, não no user-attachments. Vale também para o DER e o fluxograma.
Entrevista: faltam participantes, data, local, foto, observação presencial e resumo do levantamento. O bloco já está pronto para preencher.
Dicionário da E1: faltava ITEM_OS_PECA. A relação OS–peça é N:N com tabela associativa (já corrigido na seção 1.2).
Normalização: preco_total, validade_orcamento, prazo_garantia e sub_total são calculáveis (3FN), e endereco duplica logradouro e bairro (1FN).
Detalhes: CPF está como CHAR(11) e VARCHAR(14), data_prevista como DATETIME e DATE, e há referências a seções antigas (ex.: “seção 8-D”).
IA: nomes e versões das ferramentas estão inconsistentes. Faltam registrar os usos na massa de dados, na normalização e nas consultas SQL.
Os requisitos adicionais ampliam o sistema da oficina em três frentes.

Funcionais (RF12 a RF24):

Cadastros novos: fornecedores, mecânicos/funcionários e um catálogo de serviços com preço de tabela.
Ordem de serviço: vínculo das peças usadas à OS, registro de aprovação do orçamento, cancelamento com motivo, desconto, pagamento parcial ou sinal, checklist de entrada da moto e comprovante para impressão.
Estoque e garantia: histórico de movimentação do estoque e consulta de garantias vigentes, com aviso ao abrir nova OS.
Gestão: relatórios (faturamento, contas a vencer, peças e serviços mais usados), controle de acesso por perfis e, de forma opcional, lembrete de revisão ao cliente.

Não funcionais (RNF07 a RNF16):

Segurança e privacidade: senhas com hash, adequação à LGPD (inativar cadastros em vez de excluir) e auditoria de quem alterou o quê.
Confiabilidade dos dados: fechamento da OS como operação atômica, valores em DECIMAL(10,2), CPF e placa únicos no banco e backup com teste de restauração.
Usabilidade e saída: tela responsiva para celular, formatos brasileiros (dd/mm/aaaa, R$) e exportação em PDF ou CSV.|


| **Fontes consultadas e verificadas** | Validação cruzada com as entrevistas presenciais realizadas com o proprietário da oficina (Jackson).|
| **Trechos rejeitados ou corrigidos** | Foram descartadas sugestões de automações complexas com IA generativa para diagnóstico de motos, visto que a oficina possui foco em atendimento prático e mecânica tradicional de pequeno porte.||
| **Justificativa da escolha final** | Manteve-se apenas o escopo estritamente necessário para a realidade operacional e orçamentária dos 2 funcionários da oficina. |
| **Reflexão crítica** | As ferramentas de IA auxiliam na formatação estrutural e lembrete de boas práticas de engenharia de software, mas a validação final com o negócio real é indispensável para evitar complexidade desnecessária. |

&nbsp;

Ferramenta utilizada: ChatGPT (GPT-6).

1. Adaptação da tabela do DER

Prompt: “Preciso que você arrume essa tabela conforme essa imagem do DER utilizando os requisitos do README.”

Resposta recebida: A IA adaptou a tabela conforme as entidades, relacionamentos, atributos e cardinalidades do projeto.

2. Formatação em Markdown

Prompt: “Me dê em Markdown para colocar direto no GitHub no README.”

Resposta recebida: A IA converteu a tabela para Markdown, facilitando sua inclusão no GitHub.


| Item | O que registrar |
| :---- | :---- |
| **Ferramenta e etapa** | ChatGPT (GPT-6), massa de dados e selects  |
| **Motivação** | Para gerar a quantidade necessária de testes é necessário linhas extensas |
| **Prompt(s) utilizados** | considerando que "A empresa lucra entre R$10-16k com porte pequeno com apenas 2 funcionários e por dia variando entre 10 a 20 motos para conserto e um resultado de 6 a 12 motos finalizadas por dia com problemas simples. Agendamento presencial com teste do veículo para trabalho." preciso de - Volume de registros **coerente com a realidade da organização** e Variedade e quantidade coerentes com a organização  |
| **Resposta recebida** | Quer uma massa de dados que represente uma oficina funcionando de verdade, considerando o porte, o movimento diário e as características da Jackson Moto Peças. Eu sugiro representar aproximadamente 30 dias de operação, usando dados fictícios distribuídos ao longo desse período. |
| **Fontes consultadas e verificadas** |-------------------------- |
| **Trechos rejeitados ou corrigidos** | Selects de conferencia foram todos descartados, não estava de acordo com o solicitado e alguns estava dando erro  |
| **Justificativa da escolha final** | Como informado é necessário linhas extensas para os testes, mantivemos a resposta com alguns ajustes pois fez sentido dentro do proposto |
| **Reflexão crítica** | Como informado estava com erros de sintaxe e ocasionava erros no script além de que algumas sugestões não faziam sentido e foram necessários pequenos ajustes |

---


- 
