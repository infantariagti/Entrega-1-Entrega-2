
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
  
- **Problemas e necessidades identificados:** A empresa lucra entre R$10-16k com porte pequeno com apenas 2 funcionários e por dia variando entre 10 a 20 motos para conserto e um resultado de 6 a 12 motos finalizadas por dia com problemas simples. Agendamento presencial com teste do veículo para trabalho.
  
- **Escopo do sistema:** O escopo do sistema centraliza e organiza as informações gerais da oficina, tambem faz parte o cadastro de clientes e motocicletas, o gerenciamento de atendimentos e ordens de serviço, o controle de orçamentos, serviços realizados, estoque de peças, pagamentos e garantias.
  
- **Justificativa da escolha:** notável que maioria dos casos a comunicação do mecânico e o cliente é limitada, devido ao excesso e escasso tempo do mecânico para manusear seu tempo com agendas, o objetivo é equilibrar o atendimento de forma que o cliente consiga fazer um autoatendimento enquanto reduz o trabalho do mecânico de parar de trabalhar em outro veículo para prestar atenção ao novo cliente e seu problema.
  
- **Evidências da organização:** Av. Primavera de Caiena, 28 - Parque Santa Madalena, São Paulo - SP, 03981-010 - site: "https://paramim.my.canva.site/jackson-moto-pe-as" e rede social "https://www.instagram.com/jacksonmotosoficial?utm_source=qr&igsh=MXY5eDA4a2NyOTV1bQ%3D%3D" (fotos de evidências anexadas dentro do repositorio)
  
- **Responsável pela organização:** **Jackson(Proprietario) - 11 96067-0539**

**Relato da entrevista (todos os grupos)**

- **Quem:**  Agata (Gerente) - Lucas Pereira Andre, Paulo Renato Sobral Da Silva (Grupo).
  
- **Quando e onde:** 22/10/26-9h12/9h40 & 04/11/26-8h50/9h10 — Múltiplos clientes surgem antes da oficina abrir, agendamento presencialmente tudo feito a mão, onde o próprio cliente lembra o Mecânico de ser atendido, o atendimento funciona como uma fila, quem chega primeiro é atendido primeiro, mas em questão de problemas mais graves a uma certa prioridade do mecanico.
  
- **Comprovação:**  https://github.com/infantariagti/Entrega-1-Entrega-2/blob/Entrega-2-Modelo-Lógico%2C-Implementação-SQL-e-Apresentação-Final/Foto%20-%20Jackson%20motopeças%201.jpg E https://github.com/infantariagti/Entrega-1-Entrega-2/blob/Entrega-2-Modelo-Lógico%2C-Implementação-SQL-e-Apresentação-Final/Foto%20-%20Jackson%20motopeças%202.jpg
  
- **O que foi levantado:** - **Perguntas:** 1Como funciona o agendamento, 2como é tratado a prioridade de conserto das motos, 3oque a empresa foca de serviço, 4quantas pessoas são na empresa, 5oque faz quando não é possivel consertar a moto no dia, 6falta de peça na oficina, 7emite nota fiscal, 8como funciona o pedido de produto pra oficina, 9quantas motos chegam por dia, **Respostas:** 1Normalmente vem presencialmente ou antecipa por mensagem via WhatsApp, 2depende do problema da moto sendo rápido ou demorado mas a prioridade é se vai funcionar, 3a empresa foca em troca de óleo, retifica de motor, relação e pastilhas de freio e motor em geral, 4apenas duas a esposa do mecânico como gerente e o mecânico como dono, 5o mecanico deixa na garagem a moto e se for um problema grave a moto na garagem ate for consertada, 6a gerente pesquisa baseando-se na moto e faz o pedido, 7Nao(não citou porque), 8A gerente pesquisa fontes e locais baratos ou mais compatível com a moto, 9entre 40 a 60 motos por dia. **visitas novas na empresa:** 30/10/26 mas não houve entrevista, . O levantamento completo fica em **um arquivo Markdown (`.md`) à parte no repositório**, com link no README — **recomenda-se fortemente** colocá-lo numa pasta chamada **`levantamento`** (ex.: `levantamento/levantamento.md`). Esse arquivo é um **texto organizado, escrito pelo grupo**, sobre o que foi levantado — **não** é um vídeo ou áudio da entrevista, nem a transcrição crua de formulários ou de perguntas e respostas. **No README, apresente um resumo do levantamento.**

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

*Liste as regras de negócio vigentes, cada uma com um código (`RN01`, `RN02`…) — mantenha os códigos da Entrega 1 quando já existirem. Esses códigos são citados nas justificativas das restrições (seção 1.5) e nas consultas de auditoria do script SQL (seção 3).*

- **Levante as regras típicas do tipo de organização.** Assim como nos processos e nos requisitos, é recomendável usar pesquisas e ferramentas de IA para descobrir quais regras são comuns em organizações semelhantes e conferir se elas valem na organização escolhida — o que pode exigir confirmação com o responsável. Considere tanto as **regras operacionais** (ex.: pedido só é entregue se estiver registrado; cancelamento fica no histórico, não é apagado) quanto as **restrições legais e organizacionais** (ex.: LGPD, emissão de nota fiscal, normas sanitárias, idade mínima, acesso por cargo). Registre esse uso de IA na seção 6\.  
- **Justifique as regras prováveis não incluídas:** se uma regra comum nesse tipo de organização ficou de fora, explique por quê (ex.: a organização não realiza o processo correspondente, ou a regra não se aplica ao porte ou à natureza dela).

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

*Apresente o **DER conceitual revisado**, na notação descrita acima. A revisão parte da correção da Entrega 1 recebida pelo grupo — o DER e os demais itens acima. Para cada apontamento da correção, registre o que foi feito:*

| Apontamento da correção da E1 | O que mudou no trabalho | Por quê |
| :---- | :---- | :---- |
| Agendamento: capacidade diária / não comparecimento (ausente) | Não incluído como regra de negócio no modelo. | A oficina realiza agendamentos principalmente pelo WhatsApp, mas não possui limite diário formalizado nem política definida para não comparecimento. |
| Entrega: moto não retirada no prazo (estadia) (ausente) | Não incluído como regra de negócio. | A oficina trabalha com previsão de até dois dias para reparos simples, enquanto serviços complexos não possuem prazo fixo. Não existe política formal de cobrança por permanência. |
| Compras: fornecedor e conferência (ausente) | Não foi criada entidade FORNECEDOR. O RF04 foi detalhado para registrar o recebimento de peças e atualizar o estoque. | As compras são realizadas diretamente com distribuidores, sem processo formal de cadastro de fornecedores ou controle de prazo de entrega. |
| Pagamento: emissão de nota fiscal (ausente) | Não incluído como funcionalidade do sistema. | Conforme informado no levantamento, a oficina não realiza emissão de nota fiscal em sua operação atual. |
| Processos: recebimento de peças, estoque e garantia | RF04 foi detalhado para contemplar o recebimento de peças, atualização automática do estoque e registro de garantia de 90 dias. | RF04 foi detalhado para contemplar o recebimento de peças, atualização automática do estoque e registro de garantia de 90 dias. |
| Processos: compras e contas a pagar | RF11 foi incluído como melhoria, permitindo registrar compras, valores, datas de vencimento e situação dos pagamentos. | A funcionalidade permite acompanhar despesas da oficina, valores pendentes e pagamentos realizados.

&nbsp;

*Se o grupo discordar de algum apontamento e mantiver o modelo como estava, registre isso na tabela com a justificativa. Apontamento não citado na tabela é tratado como não corrigido.*

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

*(diagrama separado — vale 10% na Dimensão Procedimental)*

O modelo lógico deve seguir a **notação visual do brModelo** para o modelo lógico, como no exemplo abaixo. Informe no README **em qual software ou aplicativo ele foi criado**.

![Exemplo de modelo lógico na notação do brModelo](Exemplo_Logico.png)

| Elemento | Como aparece | No exemplo |
| :---- | :---- | :---- |
| **Tabela** | retângulo com o nome da tabela no topo e uma linha por coluna | `Entity 1`, `Entity 5` |
| **Coluna** | nome da coluna, à esquerda, com o tipo de dado à direita | `Attribute 30` — `INT` |
| **Chave primária** | marca `PK` ao lado do tipo | `Chave 1`, em `Entity 1`; `Chave 50` \+ `Chave 51`, em `Entity 5` (chave primária composta) |
| **Chave estrangeira** | marca `FK` ao lado do tipo | `Chave 3`, em `Entity 4` |
| **Coluna que é chave primária e estrangeira** | marcas `PK, FK` | `Chave 1`, em `Entity 2` |
| **Ligação entre tabelas** | linha entre a tabela da FK e a tabela referenciada, com a cardinalidade `(mín, máx)` em cada ponta | `Entity 3` — `Entity 4`: `(1, 1)` e `(0, n)` |

&nbsp;

Deve apresentar claramente:

- Tabelas  
- Atributos (colunas), com seus tipos de dados  
- Chaves primárias  
- Chaves estrangeiras  
- Cardinalidades já convertidas

As **demais restrições de integridade** — obrigatoriedade (`NOT NULL`), unicidade (`UNIQUE`), valores permitidos (`CHECK`), valores padrão (`DEFAULT`) — não aparecem no diagrama do brModelo e devem ser documentadas no **dicionário de dados** (seção 5\) e implementadas no **script SQL** (seção 3).

---

## 3\. Script SQL Completo

*(arquivo `.sql` — vale 12% na Dimensão Procedimental)*

O script completo é **um arquivo no formato `.sql` disponível no repositório**, de preferência numa pasta chamada **`docs`** (ex.: `docs/script.sql`), com link no README. Script colado só no README, em PDF, em imagem ou em outro formato não é aceito.

**SGBD:** MySQL — o disponível no laboratório ou outra instalação equivalente a que o grupo tenha acesso. O script deve executar no MySQL.

O script deve conter, nesta ordem lógica:

1. `CREATE DATABASE`  
2. `CREATE TABLE` (todas as tabelas, com tipos de dados adequados)  
3. **Constraints** (PK, FK, `NOT NULL`, `UNIQUE`, `CHECK` etc.)  
4. `INSERT INTO` (carga da massa de dados — ver seção 4\)  
5. `SELECT` com `JOIN` (consultas que cruzam múltiplas tabelas)  
6. `UPDATE`  
7. `DELETE`  
8. **Consultas gerenciais** (que respondem perguntas de gestão, ex.: faturamento/arrecadação por período, número de atendimentos/beneficiários)  
9. **Consultas de auditoria** (que verificam consistência/integridade dos dados)

Cada **consulta gerencial** e cada **consulta de auditoria** deve ter um cabeçalho em comentário com um código (`G01`, `G02`… para gerenciais; `A01`, `A02`… para auditoria), a pergunta que ela responde em português e o que ela atende:

```sql
-- G03 — Quais bebidas estão abaixo do estoque mínimo hoje?
-- Atende: P1 (ruptura de estoque de bebidas)
SELECT ...

-- A02 — Existe pedido registrado sem nenhum item?
-- Verifica: RN04 (todo pedido tem ao menos um item)
SELECT ...
```

&nbsp;

- **Consultas gerenciais** respondem aos problemas declarados e aos KPIs da seção 1.6 — pelo menos uma por problema declarado e por KPI.  
- **Consultas de auditoria** verificam regras de negócio, citando o código da regra (`RNxx`) que cada uma confere.  
- Essas mesmas consultas são as usadas na demonstração da apresentação final (seção 7).

*Teste o script do zero (banco vazio) antes de entregar, para garantir que ele executa sem erros.*

---

## 4\. Massa de Dados

*(incluída no script ou em arquivo separado — parte da nota de Implementação SQL, 12%)*

Se a massa de dados ficar em arquivo separado, ele deve seguir a mesma regra do script: **um arquivo no formato `.sql` no repositório**, de preferência na pasta **`docs`** (ex.: `docs/massa_de_dados.sql`), com link no README.

- **Dados reais da organização (nomes de clientes, fiéis, beneficiários, doadores, valores reais etc.) não devem ser utilizados, em respeito à privacidade dessas informações.** A massa de dados deve ser **fictícia**, mas **coerente com as operações modeladas** (mesmos tipos de processo, volumes e regras observados na organização real).  
- Volume de registros **coerente com a realidade da organização** (nada de 3 linhas de exemplo — mas também nada artificialmente inflado sem sentido).  
- **Explique como o volume real da organização** — os números informados em *Contexto e porte* (seção 1.1), como clientes ativos, pedidos por mês, atendimentos por semana, itens no estoque — **justifica a quantidade de registros de cada tabela** da massa de dados.  
- Dados consistentes o suficiente para validar os processos organizacionais modelados (ex.: pedidos que referenciam clientes e produtos existentes, ou doações que referenciam doadores e campanhas existentes).  
- **Variedade e quantidade coerentes com a organização, para que os testes sejam possíveis:** os dados devem cobrir as situações reais — não só o caso comum, mas também pedidos cancelados, clientes sem compras, produtos abaixo do estoque mínimo, pagamentos em formas diferentes, registros em períodos diferentes. Sem essa variedade, as consultas gerenciais e de auditoria (seção 3\) não têm o que mostrar: uma consulta de produtos abaixo do estoque mínimo que retorna vazio não demonstra nada.  
- **Documente o uso de LLMs** para gerar essa massa de dados na seção 6 (**Uso de Inteligência Artificial**), incluindo ferramentas, prompts e ajustes feitos manualmente.

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

*Se o grupo não usou nenhuma ferramenta de IA em alguma dessas etapas, declare isso explicitamente.*

**Uso de IA observado e não declarado será penalizado.**

Ferramenta utilizada: ChatGPT (GPT-6).

1. Adaptação da tabela do DER

Prompt: “Preciso que você arrume essa tabela conforme essa imagem do DER utilizando os requisitos do README.”

Resposta recebida: A IA adaptou a tabela conforme as entidades, relacionamentos, atributos e cardinalidades do projeto.

2. Formatação em Markdown

Prompt: “Me dê em Markdown para colocar direto no GitHub no README.”

Resposta recebida: A IA converteu a tabela para Markdown, facilitando sua inclusão no GitHub.




---


- 
