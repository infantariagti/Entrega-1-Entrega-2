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

- **Ajustes nos apontamentos:**
**5. Processos de negócio-**
**RF04 -** Recebimento de Peças, Controle de Estoque e Garantia: Registrar o recebimento de peças (peça, quantidade e valor de custo), somando a quantidade ao saldo em estoque, e registrar automaticamente a garantia de 90 dias a partir da data de saída ao encerrar a OS.

**RF11 -** Contas a Pagar (melhoria): Registrar as compras de peças e insumos/consumíveis (óleo, graxa, velas etc.) utilizados nos serviços da oficina, informando descrição, valor, data da compra, data de vencimento e situação (Pendente ou Pago), permitindo consultar os valores a pagar e os já quitados.

O RF11 foi incluído como melhoria para atender aos processos apontados como ausentes (compra de peças e contas a pagar). Ele não altera o escopo do DER atual, pois a oficina opera com apenas dois atores (seção 8-D). Sua implementação futura exigirá a entidade CONTA_PAGAR, vinculada ao recebimento de peças.

**Justificativo do itens apontados no modelo conceitual:**
**Agendamento:** capacidade diária / não comparecimento	Agendamento	Ausente: o agendamento não se limita à entrega da moto, e não há regra formal de não comparecimento relatada. A capacidade do local é de 30 motos, mas não há limite diário de agendamentos formalizado.
**Moto não retirada no prazo (estadia) Entrega Ausente:** o prazo de reparo é de até 2 dias, e problemas complexos ficam sem prazo definido. Sem prazo fixo, não há como estabelecer regra de estadia ou cobrança por permanência.
**Compra de peças: fornecedor e conferência	Compras	Ausente:** a compra é feita direto com o distribuidor, com a oficina comparecendo à loja ou ao local. Não há prazo de entrega nem fornecedor formal a controlar, logo não há regra de conferência de recebimento.
**Emissão de nota fiscal Pagamento Ausente:** a oficina não emite nota fiscal, pois considera o processo muito burocrático. A regra não se aplica à operação atual.

#### Conversão do Modelo Conceitual para o Modelo Lógico
*(vale 7,5%)*
- **Entidades → Tabelas:** *como cada entidade virou tabela.*
- **Atributos → Colunas:** *conversão correta dos atributos.*
- **Relacionamentos → Chaves:** *como os relacionamentos foram traduzidos.*
- **Cardinalidades:** *como cada cardinalidade (1:1, 1:N, N:N) foi tratada (inclusive tabelas associativas, se houver).*


#### Definição de Chaves Primárias e Estrangeiras
*Liste as PKs e FKs de cada tabela (serve de base para a justificativa técnica abaixo).*

#### Processo de Normalização (1FN, 2FN e 3FN)
*(vale 7,5%)*
- **1FN:** *eliminação de grupos repetitivos/atributos multivalorados.*
- **2FN:** *eliminação de dependências parciais.*
- **3FN:** *eliminação de dependências transitivas.*
- **Justificativa do processo:** *por que cada forma normal foi necessária no seu caso.*

#### Justificativas Técnicas das Decisões
*(vale 7,5% — maior peso individual da dimensão conceitual)*
- Justificar as **chaves primárias** escolhidas.
- Justificar as **chaves estrangeiras** e os relacionamentos que elas implementam.
- Justificar as **restrições** aplicadas (unicidade, obrigatoriedade, valores permitidos etc.).
- Justificar **decisões arquiteturais** gerais do modelo.

#### Proposta de Arquitetura Analítica para BI e IA
*(vale 7,5%)*
- **Informações estratégicas** que podem ser extraídas dos dados para a gestão da organização.
- **Indicadores e métricas gerenciais** propostos (KPIs).
- **Potencial dos dados para BI:** como a estrutura apoia dashboards/relatórios.
- **Aplicações analíticas e de IA:** como o modelo pode alimentar análises preditivas, recomendações etc.

### Modelo Lógico Relacional
*(diagrama/documento separado — vale 10% na Dimensão Procedimental)*

Deve apresentar claramente:
- Tabelas
- Atributos (colunas)
- Chaves primárias
- Chaves estrangeiras
- Restrições de integridade
- Cardinalidades já convertidas

### Script SQL Completo
*(arquivo `.sql` — vale 12% na Dimensão Procedimental)*

O script deve conter, nesta ordem lógica:
1. `CREATE DATABASE`
2. `CREATE TABLE` (todas as tabelas, com tipos de dados adequados)
3. **Constraints** (PK, FK, `NOT NULL`, `UNIQUE`, `CHECK` etc.)
4. `INSERT INTO` (carga da massa de dados — ver seção 4)
5. `SELECT` com `JOIN` (consultas que cruzam múltiplas tabelas)
6. `UPDATE`
7. `DELETE`
8. **Consultas gerenciais** (que respondem perguntas de gestão, ex.: faturamento/arrecadação por período, número de atendimentos/beneficiários)
9. **Consultas de auditoria** (que verificam consistência/integridade dos dados)

*Teste o script do zero (banco vazio) antes de entregar, para garantir que ele executa sem erros.*

---

### Massa de Dados
*(incluída no script ou em arquivo separado — parte da nota de Implementação SQL, 12%)*

- **Dados reais da organização (nomes de clientes, fiéis, beneficiários, doadores, valores reais etc.) não devem ser utilizados, em respeito à privacidade dessas informações.** A massa de dados deve ser **fictícia**, mas **coerente com as operações modeladas** (mesmos tipos de processo, volumes e regras observados na organização real).
- Volume de registros **coerente com a realidade da organização** (nada de 3 linhas de exemplo — mas também nada artificialmente inflado sem sentido).
- Dados consistentes o suficiente para validar os processos organizacionais modelados (ex.: pedidos que referenciam clientes e produtos existentes, ou doações que referenciam doadores e campanhas existentes).
- **Documente o uso de LLMs** para gerar essa massa de dados na seção **"Uso de Inteligência Artificial"** (item 6), incluindo ferramentas, prompts e ajustes feitos manualmente.

---


- 
