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

*Relate a entrevista com o responsável pela organização. A entrevista da Entrega 1 pode ser reaproveitada se atender a todos os itens abaixo — inclusive ter sido feita no ambiente da organização, com foto — e se tiver levantado o necessário para os processos, requisitos e regras desta etapa. Se algo precisou ser confirmado depois (ex.: processos típicos levantados por pesquisa), relate também a nova visita.*

- **Quem:** nome e função do entrevistado e quais integrantes do grupo participaram.  
- **Quando e onde:** data e local — a entrevista deve ser realizada **no ambiente da organização**. A **observação presencial** da rotina é parte importante do levantamento de requisitos: o que o grupo vê acontecer no local (como um pedido é anotado, onde o estoque é controlado, que papéis e planilhas circulam) muitas vezes difere do que é dito na entrevista. **Destaque os achados obtidos pela observação**, separados dos obtidos pelas respostas do entrevistado.  
- **Comprovação:** ao menos uma foto da entrevista no local, como arquivo JPG ou PNG no repositório.  
- **O que foi levantado:** o que foi perguntado, o que foi confirmado e, se houve nova visita, o que mudou em relação à Entrega 1 (processos, regras, volumes, problemas). O levantamento completo fica em **um arquivo Markdown (`.md`) à parte no repositório**, com link no README — **recomenda-se fortemente** colocá-lo numa pasta chamada **`levantamento`** (ex.: `levantamento/levantamento.md`). Esse arquivo é um **texto organizado, escrito pelo grupo**, sobre o que foi levantado — **não** é um vídeo ou áudio da entrevista, nem a transcrição crua de formulários ou de perguntas e respostas. **No README, apresente um resumo do levantamento.**

**Nível de detalhe — processos, requisitos e regras de negócio (todos os grupos)**

*Frases genéricas como "o sistema deve permitir cadastrar cliente" são **superficiais** e não bastam. Em processos, requisitos e regras, indique **quais dados** estão envolvidos — todos os campos que aparecem no trabalho (DER, dicionário de dados, modelo lógico):*

| Superficial | Detalhado |
| :---- | :---- |
| *O sistema deve permitir cadastrar cliente.* | *RF03 — O sistema deve permitir cadastrar cliente com nome completo, CPF, telefone, e-mail e endereço (logradouro, número, bairro, CEP).* |
| *O cliente faz o pedido.* | *O garçom anota no pedido a mesa, o número da pulseira do cliente e, para cada item, o produto, a quantidade e as observações.* |
| *O cliente precisa estar cadastrado.* | *RN05 — Todo cliente deve ter CPF válido e único; telefone e nome completo são obrigatórios.* |

&nbsp;

**Processos de negócio (todos os grupos)**

*Apresente os **principais processos mapeados** na organização — ex.: cadastro de clientes/beneficiários/fiéis, controle de estoque ou doações, vendas ou arrecadação, emissão de pedidos ou solicitações, entregas ou distribuição, organização de eventos/rituais/mutirões.*

- **Levante os processos típicos do tipo de organização.** É recomendável usar pesquisas e ferramentas de IA para descobrir quais processos são comuns em organizações do mesmo tipo (ex.: o que toda pizzaria, ONG de doação de alimentos ou oficina mecânica costuma fazer) e conferir se eles existem na organização escolhida. Isso pode exigir **uma nova visita à organização** para confirmar como cada processo funciona lá. Registre esse uso de IA na seção 6\.  
- **Inclua os processos que existem na organização**, mesmo os que não estão ligados aos problemas declarados — o banco de dados reúne todos os dados da organização (ver *Escopo do sistema* acima).  
- **Justifique os processos prováveis não incluídos:** se um processo comum nesse tipo de organização ficou de fora (ex.: compras de fornecedores, cancelamentos, escala da equipe), explique por quê — por exemplo, a organização não o realiza, ou ele é feito por terceiros.

**Requisitos (todos os grupos)**

*Apresente os requisitos do sistema, atualizados com base na correção da Entrega 1 (ou elaborados agora, para quem trocou de organização):*

- **Requisitos Funcionais:**
| Código | Requisito |
| :---- | :---- |
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
| RF11 | Contas a pagar: registrar compras de peças e insumos com descrição, valor, data da compra, vencimento e situação (Pendente/Pago). **[CONFERIR]** exige a entidade `CONTA_PAGAR` (ver nota na seção C). |
- **Requisitos Não Funcionais:**
| Código | Requisito |
| :---- | :---- |
| RNF01 | Usabilidade: interface simples; cadastro de atendimento em menos de 2 minutos. |
| RNF02 | Desempenho: busca por cliente ou placa em menos de 2 segundos. |
| RNF03 | Integridade: não excluir clientes ou motos com OS ativa ou histórico. |
| RNF04 | Backup periódico (local ou nuvem). |
| RNF05 | Compatibilidade: rodar em computador básico, via navegador. |
| RNF06 | Validação de entrada: máscara de CPF, padrão de telefone e placa (antiga e Mercosul). |

  
- **Levante os requisitos típicos do tipo de organização.** Assim como nos processos, é recomendável usar pesquisas e ferramentas de IA para descobrir quais requisitos funcionais e não funcionais são comuns em sistemas de organizações semelhantes e conferir se eles se aplicam à organização escolhida — o que pode exigir confirmação com o responsável. Registre esse uso de IA na seção 6\.  
- **Justifique os requisitos prováveis não incluídos:** se um requisito comum nesse tipo de organização ficou de fora, explique por quê (ex.: a organização não realiza o processo correspondente, ou a necessidade não existe no porte dela).

*Na Entrega 1, os erros mais comuns foram: requisitos de um sistema diferente do que foi mapeado (ex.: cardápio por QR Code ou motor de recomendação, quando o processo real é o garçom anotar o pedido), problemas declarados sem nenhum requisito que os resolva e requisitos técnicos (autenticação por JWT, hospedagem em nuvem) listados como funcionais. Os requisitos devem corresponder aos processos de negócio descritos acima e cobrir todos os problemas declarados (`P1`, `P2`…).*

**Regras de negócio (todos os grupos)**

*Liste as regras de negócio vigentes, cada uma com um código (`RN01`, `RN02`…) — mantenha os códigos da Entrega 1 quando já existirem. Esses códigos são citados nas justificativas das restrições (seção 1.5) e nas consultas de auditoria do script SQL (seção 3).*

- **Levante as regras típicas do tipo de organização.** Assim como nos processos e nos requisitos, é recomendável usar pesquisas e ferramentas de IA para descobrir quais regras são comuns em organizações semelhantes e conferir se elas valem na organização escolhida — o que pode exigir confirmação com o responsável. Considere tanto as **regras operacionais** (ex.: pedido só é entregue se estiver registrado; cancelamento fica no histórico, não é apagado) quanto as **restrições legais e organizacionais** (ex.: LGPD, emissão de nota fiscal, normas sanitárias, idade mínima, acesso por cargo). Registre esse uso de IA na seção 6\.  
- **Justifique as regras prováveis não incluídas:** se uma regra comum nesse tipo de organização ficou de fora, explique por quê (ex.: a organização não realiza o processo correspondente, ou a regra não se aplica ao porte ou à natureza dela).

**Notação do DER conceitual (todos os grupos — Caso A e Caso B)**

*O DER deve seguir a notação do **brModelo**, como no exemplo abaixo:*

![Exemplo de DER na notação do brModelo](Exemplo_DER.png)

| Elemento | Como aparece | No exemplo |
| :---- | :---- | :---- |
| **Entidade** | retângulo | `Entity 1` a `Entity 5` |
| **Relacionamento** | losango | `Rel 33`, `Rel 34` |
| **Cardinalidade mínima e máxima** | par `(mín, máx)` dos dois lados de cada relacionamento | `(0, 1)`, `(1, n)`, `(0, n)` |
| **Autorrelacionamento** | losango ligado duas vezes à mesma entidade, cada lado com sua cardinalidade | `Rel 33`, em `Entity 3` |
| **Atributo identificador (chave)** | círculo **preenchido** | `Chave 1`, `Chave 2`, `Chave 3`, `Chave 4` |
| **Identificador composto** | mais de um círculo preenchido na mesma entidade (obrigatório) — ou mais de um atributo sublinhado, se os atributos estiverem listados no retângulo | `Chave 50` \+ `Chave 51`, em `Entity 5` |
| **Atributo comum** | círculo **vazio** | `Attribute 10`, `Attribute 30` |
| **Atributo multivalorado** | círculo vazio com a cardinalidade do atributo | `Attribute 11 (1, n)` |
| **Atributo composto** *(representação gráfica opcional)* | atributo com seus próprios subatributos ligados a ele | `Attribute 21`, com `attr 211` e `attr 212` |
| **Generalização/especialização** | triângulo ligando a entidade genérica às especializadas. **A indicação de totalidade e disjunção não é obrigatória** | `Entity 1` → `Entity 2` e `Entity 3` |
| **Entidade associativa** | retângulo envolvendo o losango do relacionamento, que passa a poder se relacionar com outras entidades e ter atributos próprios | `Rel 53`, com `Attribute 530` |

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
| Agendamento: capacidade diária / não comparecimento (ausente) | Não incluído; justificado na seção C. | Não há limite diário formalizado nem regra de não comparecimento. |
| Entrega: moto não retirada no prazo (estadia) (ausente) | Não incluído; justificado na seção C. | Sem prazo fixo de reparo, não há regra de estadia. |
| Compras: fornecedor e conferência (ausente) | Não incluído fornecedor formal. RF04 passa a registrar o recebimento de peças; RF11 entra como melhoria. | Compra direta com o distribuidor, sem prazo nem conferência. |
| Pagamento: emissão de nota fiscal (ausente) | Não incluído; justificado na seção C. | A oficina não emite nota fiscal. |
| Processos: recebimento de peças, estoque e garantia | RF04 reescrito (recebimento + soma ao estoque + garantia automática de 90 dias). | Cobre o processo apontado como ausente. |
| Processos: compras e contas a pagar | RF11 incluído como melhoria. | Atende ao processo ausente.

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
- **Justificativa do processo:** *por que cada forma normal foi necessária no seu caso.*

### 1.5 Justificativas Técnicas das Decisões

- Justificar as **chaves primárias** escolhidas.  
- Justificar as **chaves estrangeiras** e os relacionamentos que elas implementam.  
- Justificar as **restrições** aplicadas (unicidade, obrigatoriedade, valores permitidos etc.), citando o código da regra de negócio (`RNxx`) que cada restrição implementa, quando houver.  
- Justificar **decisões arquiteturais** gerais do modelo.

### 1.6 Proposta de Arquitetura Analítica para BI e IA

*(vale 7,5%)*

- **Informações estratégicas** que podem ser extraídas dos dados para a gestão da organização.  
- **Indicadores e métricas gerenciais** propostos (KPIs).  
- **Potencial dos dados para BI:** como a estrutura apoia dashboards/relatórios.  
- **Aplicações analíticas e de IA:** como o modelo pode alimentar análises preditivas, recomendações etc.

**Rastreabilidade:** inclua uma tabela que ligue cada problema declarado na caracterização da organização e cada KPI proposto às tabelas que o sustentam e à consulta do script SQL que o responde (pelo código da consulta — ver seção 3):

| Problema ou KPI | Tabelas envolvidas | Consulta no script |
| :---- | :---- | :---- |
| *ex.: P1 — ruptura de estoque de bebidas* | *PRODUTO, MOVIMENTACAO\_ESTOQUE* | *G03* |
| *ex.: ticket médio por ambiente* | *PEDIDO, ITEM\_PEDIDO, AMBIENTE* | *G05* |

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
| **Ferramenta e etapa** | Qual IA foi usada e em qual parte do trabalho (ex.: normalização, geração da massa de dados, escrita de queries SQL, redação do relatório, preparação dos slides). |
| **Motivação** | Por que o grupo recorreu à IA nesse ponto específico. |
| **Prompt(s) utilizados** | Texto exato (ou muito próximo) do que foi perguntado/pedido à IA. |
| **Resposta recebida** | Resumo ou trecho relevante da resposta da IA. |
| **Fontes consultadas e verificadas** | Se a IA citou fontes/dados, quais foram checadas pelo grupo e como. |
| **Trechos rejeitados ou corrigidos** | O que da resposta da IA foi descartado, editado ou corrigido manualmente (ex.: query SQL ajustada, dado fictício alterado), e por quê. |
| **Justificativa da escolha final** | Por que o grupo manteve, adaptou ou rejeitou o que a IA sugeriu. |
| **Reflexão crítica** | Limites, vieses ou erros identificados no uso da IA nessa etapa (ex.: normalização incorreta sugerida pela IA, script SQL com erro de sintaxe, dado fictício incoerente com o volume real da organização). |

&nbsp;

*Se o grupo não usou nenhuma ferramenta de IA em alguma dessas etapas, declare isso explicitamente.*

**Uso de IA observado e não declarado será penalizado.**





---


- 
