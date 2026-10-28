
# Entrega 1 — Modelo Conceitual (DER)
### Modelagem de um sistema de gestão de informações para uma organização de pequeno porte

## Metadados
- **Nomes dos alunos e RGM**
- Guilherme da Silva Lima RGM: 47585277
- Kaiky hamada RGM: 47210486
- Lucas Pereira Andre RGM: 46614397
- Paulo Renato Sobral da Silva RGM: 46763902
- Ricardo Naoto Arakaki RGM: 46786619

---
## 1. Caracterização da Organização 

- **Nome e natureza da organização:** Jackson Moto Peças, Oficina Mecânica

- **Contexto e porte:** A empresa lucra entre R$10-16k com porte pequeno com apenas 2 funcionários e por dia variando entre 10 a 20 motos para conserto e um resultado de 6 a 12 motos finalizadas por dia com problemas simples. Agendamento presencial com teste do veículo para trabalho. 

- **Problemas e necessidades identificados:** Ausência de comunicação flexível entre funcionário e cliente, necessitando de um suporte de controle para gerenciamento da fila de espera dos clientes e seus veículos. 

- **Justificativa da escolha:** notável que maioria dos casos a comunicação do mecânico e o cliente é limitada, devido ao excesso e escasso tempo do mecânico para manusear seu tempo com agendas, o objetivo é equilibrar o atendimento de forma que o cliente consiga fazer um autoatendimento  enquanto reduz o trabalho do mecânico de parar de trabalhar em outro veículo para prestar atenção ao novo cliente e seu problema.

- **Evidências da organização:** Av. Primavera de Caiena, 28 - Parque Santa Madalena, São Paulo - SP, 03981-010 - 11 96067-0539 - Jackson 			
<img width="900" height="1600" alt="Foto Jackson" src="https://github.com/user-attachments/assets/19115033-1747-478e-a2dc-d29909fad7c0" />" />
<img width="900" height="1600" alt="Foto Jackson 2 jpeg " src="https://github.com/user-attachments/assets/50d1d8b0-ecd3-4f3d-b803-25857341477f" /> />


## 2. Processos de Negócio

- **Principais processos mapeados:**

**Recebe mensagens do cliente via WhatsApp:** Cliente entra em contanto com a oficina pedindo informações a respeito dos procedimentos a serem realizados com a motocicleta

**Agendamento via WhatsApp:** O processo de agendamento é feito por WhatsApp a partir de mensagens (registo principal de agendamento da empresa em questão)

**Recebimento da motocicleta:** Cliente leva a motocicleta até a oficina como conversado no WhatsApp

**Inspeção da motocicleta:** Mecânico realiza a inspeção previa conforme problemas relatados pelo cliente

**Orçamento:** Identificação dos serviços necessários, peças e valores.

**Aprovação do orçamento:** Autorização do cliente para execução dos serviços.

**Combina quando vai ser retirado:** Realiza a conversa via WhatsApp para informar ao cliente uma data e horário prevista para finalização do serviço

**Execução do serviço:** Realização da manutenção ou reparo pelos mecânicos.

**Finalização e entrega:** Conferência do serviço, pagamento e devolução da motocicleta ao cliente.

**Fluxogramas:**

<img width="305" height="1190" alt="image" src="https://github.com/user-attachments/assets/66076bf5-f5b3-4f81-9cd6-5c6b703e1b49" />


## 3. Requisitos do Sistema

### 3.1 Requisitos Funcionais (RF)

RF01 - Cadastro de Clientes: Cadastrar os clientes associando-as a uma moto (nome, telefone/WhatsApp, CPF e endereço).
	
RF02 - Cadastro de Veículos (Motos): Cadastrar as motos associando-as a um cliente específico (placa, modelo, marca, ano, cor e quilometragem de entrada).
	
RF03 - Abertura e Gestão de Ordem de Serviço (OS): Criar e atualizar a OS contendo data de entrada, defeito relatado, diagnóstico do mecânico, status (Ex: Aguardando Aprovação, Em Manutenção, Pronta, Entregue) e previsão de entrega.

RF04 - Recebimento de Peças, Controle de Estoque e Garantia: Registrar o recebimento de peças (peça, quantidade e valor de custo), somando a quantidade ao saldo em estoque, e registrar automaticamente a garantia de 90 dias a partir da data de saída ao encerrar a OS.

RF05 - Cadastro de Peças e Controle de Estoque: Registrar peças (nome, código/referência, valor de custo, valor de venda e quantidade em estoque), reduzindo o saldo automaticamente ao fechar uma OS.

RF06 - Lançamento de Serviços (Mão de Obra): Cadastrar e vincular os serviços prestados (ex: troca de óleo, revisão geral, troca de relação) com seus respectivos valores à OS.

RF07 - Geração de Orçamento: Calcular o valor total (peças + mão de obra) e permitir a visualização/impressão do orçamento formatado para validação com o cliente.

RF08 - Registro de Pagamentos: Registrar a forma de pagamento (Pix, dinheiro, cartão de crédito/débito) e alterar o status financeiro da OS para Pago.

RF09 - Histórico de Manutenções: Permitir a busca do histórico completo de OS de uma determinada moto por placa ou cliente, facilitando diagnósticos futuros pelo mecânico.

RF10 - Alerta de Estoque Mínimo: Exibir aviso quando itens de alto giro (óleo, pastilhas de freio, velas) atingirem a quantidade mínima cadastrada.

RF11 - Contas a Pagar (melhoria): Registrar as compras de peças e insumos/consumíveis (óleo, graxa, velas etc.) utilizados nos serviços da oficina, informando descrição, valor, data da compra, data de vencimento e situação (Pendente ou Pago), permitindo consultar os valores a pagar e os já quitados.

### 3. Requisitos Não-Funcionais (RNF)

RNF01 - Usabilidade: A interface deve ser simples e intuitiva, com formulários diretos para que o cadastro do atendimento leve menos de 2 minutos.

RNF02 - Desempenho: As buscas por cliente ou placa do veículo devem retornar resultados instantaneamente (menos de 2 segundos).

RNF03 - Integridade de Dados: O sistema não deve permitir a exclusão de clientes ou motos que possuam ordens de serviço ativas ou histórico registrado.

RNF04 - Backup de Dados: O banco de dados deve possuir uma rotina periódica de backup (local ou em nuvem) para evitar perda de dados de clientes e caixa.

RNF05 - Compatibilidade de Hardware: O sistema deve rodar em computadores de entrada (configuração básica da recepção) por meio de um navegador web padrão.

RNF06 - Validação de Entrada: O sistema deve validar formatos de dados (máscara de CPF, padrão de telefone e formato da placa Mercosul/antiga).
	
---

## 4. Regras de Negócio

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

---

  ## 5. Dicionário de Dados Conceitual (Preliminar)

- **Entidade CLIENTE:** Armazena as informações dos proprietários das motos atendidas na 
oficina.

| Atributo | Descrição | Regra de negócio associada |	
| -------- | -------- |	-------- |	
| id_cliente | Identificador único do cliente no sistema | Obrigatório, Chave Primária (PK), Gerado automaticamente pelo sistema |	
| nome | Nome completo do cliente |	Obrigatorio. Exemplo fictício: "Carlos Eduardo Silva". |	
| cpf | Cadastro de Pessoa Física do cliente | Obrigatorio, Único, Formato válido (11 dígitos). Restrição de privacidade (RO04 - LGPD). Exemplo fictício: "123.456.789-00".|
| telefone | Número de telefone/WhatsApp para contato | Obrigatorio. Usado para validação de orçamentos e avisos de conclusão de serviço. Exemplo fictício: "(11) 98765-4321".|
| endereco | Logradouro e bairro do cliente | Opcional. Registro complementar para cadastro. Exemplo fictício: "Rua das Flores, 123 - Centro".|

- **Entidade VEICULO (Moto):**	Armazena os dados dos veículos cadastrados e vinculados aos clientes.
  
| Atributo | Descrição | Regra de negócio associada |	
| -------- | -------- |	-------- |				
|placa | Placa de identificação da moto|Obrigatorio, Chave Primária (PK). Deve seguir o padrão antigo (AAA-1234) ou Mercosul (ABC1D23). Vinculação obrigatória a um cliente (RN03). Exemplo fictício: "ABC-1D23".|
|modelo|Modelo da motocicleta|Obrigatorio. Exemplo fictício: "CG 160 Titan".|
|marca|Fabricante da moto|Obrigatorio. Exemplo fictício: "Honda".|
|ano|Ano de fabricação do veículo|Obrigatorio. Numérico inteiro de 4 dígitos. Exemplo fictício: "2021".|
|cor|Cor predominante do veículo|Obrigatorio. Exemplo fictício: "Vermelha".|
|km_atual|Quilometragem registrada no momento da entrada|Obrigatorio. Deve ser um número inteiro maior ou igual a zero.|

- **Entidade ORDEM_SERVICO:** Entidade central do sistema, responsável por registrar o ciclo de atendimento e manutenção da moto.

| Atributo | Descrição | Regra de negócio associada |	
| -------- | -------- |	-------- |				
|numero_os|Código identificador da Ordem de Serviço|Obrigatorio, Chave Primária (PK), Gerado automaticamente.|
|data_entrada|Data e hora em que a moto deu entrada na oficina|Obrigatorio. Preenchimento automático no momento do cadastro.|
|data_previsao|Data estimada para conclusão dos serviços|Obrigatorio. Deve ser igual ou posterior à data_entrada.|
|data_saida|Data e hora do encerramento e entrega da moto|Opcional na abertura. Preenchimento obrigatório no momento da quitação (RN04).|
|status_os|Estado atual da Ordem de Serviço no fluxo de trabalho|Obrigatorio. Orçamento aceito: "Aguardando Aprovação", "Aprovada", "Em Manutenção" (RN01), "Aguardando Nova Aprovação" (RN05), "Pronta", "Entregue".|
|defeito_relatado|Descrição do problema informado pelo cliente|Obrigatorio. Preenchido pela recepcionista/esposa no atendimento.|
|diagnostico_tecnico|Avaliação detalhada das causas efetuada pelo mecânico|Opcional na abertura. Obrigatorio para emissão do orçamento.|
|Preço_total|Soma do preço total das peças e dos serviços prestados|Obrigatorio, Calculado automaticamente. Deve ser maior ou igual a zero.|
|forma_pagamento|Meio utilizado para a quitação total|Preenchimento obrigatório no fechamento da OS. pagamentos permitidos: "Pix", "Dinheiro", "Cartão de Débito", "Cartão de Crédito". Proibido uso de fiado/promissórias (RO03).|
|validade_orcamento|Data limite de validade dos preços propostos|Calculado automaticamente (data_entrada + 10 dias), conforme RO02 (CDC).|
|prazo_garantia|Período legal de garantia do serviço prestado|Preenchido automaticamente com 90 dias a partir da data_saida, conforme RO02 (CDC).|
	
- **Entidade PECA:** Registra o inventário de peças e insumos mantidos na oficina.
	
| Atributo | Descrição | Regra de negócio associada |	
| -------- | -------- |	-------- |	
|id_item_peca|Código identificador do item de estoque|Obrigatorio, Chave Primária (PK), Gerado automaticamente.|
|descricao_peca|Nome ou especificação técnica da peça|Obrigatorio. Exemplo fictício: "Óleo de Motor 10W30 1L".|
|codigo_referencia|Código do fabricante ou referência comercial|Opcional. Exemplo fictício: "MOB-10W30-1L".|
|preço_custo|Preço pago pela oficina na aquisição do produto|Obrigatorio. Numérico positivo.|
|preço_venda|Preço cobrado do cliente na OS|Obrigatorio.Deve ser estritamente maior que o preço_custo.|
|qtd_estoque|Quantidade física disponível na oficina|Obrigatorio. Inteiro positivo ou zero. Inclusão na OS sujeita à disponibilidade (RN02).|
|estoque_minimo|Quantidade minima disponível na oficina para controle de estoque|Obrigatorio. Inteiro positivo ou zero.|

- **Entidade SERVICO:** Catálogo de mão de obra prestada pelo mecânico.

| Atributo | Descrição | Regra de negócio associada |	
| -------- | -------- |	-------- |	
|id_servico|Código identificador da modalidade de serviço|Obrigatorio, Chave Primária (PK), Gerado automaticamente.|
|nome_servico|Nome descritivo da atividade técnica|Obrigatorio. Exemplo fictício: "Troca de Kit Relação".|
|preço_padrao|Preço base sugerido para a execução do serviço|Obrigatorio. Numérico maior que zero.|

---

## 6. Modelagem Conceitual (Entidades, Atributos, Relacionamentos)
- **Entidades Reconhecidas e Justificativas**
  
	**CLIENTE: Entidade forte cadastral.**
	- Justificativa: Necessária para armazenar os dados de contato, identificação e histórico dos proprietários dos veículos, garantindo o cumprimento de exigências fiscais, contratuais e de LGPD.
		
	**VEICULO: Entidade forte (ou de domínio).**
	- Justificativa: Representa a motocicleta trazida para a oficina. A separação entre CLIENTE e VEICULO permite que um mesmo cliente possua mais de uma moto cadastrada ao longo do tempo.
		
	**ORDEM_SERVICO (OS): Entidade transacional central.**
	- Justificativa: Controla todo o ciclo de vida do atendimento (diagnóstico, aprovação, execução, cobrança e garantia), vinculando a moto atendida aos produtos e mão de obra empregados.
	
	**PECA: Entidade forte cadastral.**
	- Justificativa: Representa o inventário físico de insumos e componentes mantidos na oficina. Essencial para controle automático de saldo de estoque e cálculo de orçamentos.
		
	**SERVICO: Entidade forte cadastral.**
	- Justificativa: Mantém a tabela/catálogo de serviços de mão de obra prestados pelo mecânico, estabelecendo valores padrão para agilizar a criação de ordens de serviço.

- **Atributos e Classificações** A classificação dos atributos segue o padrão conceitual de modelagem de dados:

- **Entidade CLIENTE:**

| Atributo | Classificação do atributo |	
| -------- |	-------- |	
|id_cliente|Identificador (Chave Primária), Simples, Monovalorado|
|nome|Atômico/Simples, Monovalorado, Obrigatório|
|cpf|Atômico/Simples, Monovalorado, Obrigatório, Único|
|telefone|Atômico/Simples, Monovalorado, Obrigatório|
|endereco|Composto (Logradouro, Bairro), Opcional|

- **Entidade VEICULO:**

| Atributo | Classificação do atributo |	
| -------- |	-------- |	
|placa|Identificador (Chave Primária), Simples, Monovalorado|
|modelo|Atômico/Simples, Monovalorado, Obrigatório|
|marca|Atômico/Simples, Monovalorado, Obrigatório|
|ano|Atômico/Simples, Monovalorado, Obrigatório|
|cor|Atômico/Simples, Monovalorado, Obrigatório|
|km_atual|Atômico/Simples, Monovalorado, Obrigatório|

- **Entidade ORDEM_SERVICO:**

| Atributo | Classificação do atributo |	
| -------- | -------- |	
|numero_os|Identificador (Chave Primária), Simples, Monovalorado|
|data_entrada|Atômico/Simples, Monovalorado, Obrigatório|
|data_previsao|Atômico/Simples, Monovalorado, Obrigatório|
|data_saida|Atômico/Simples, Monovalorado, Opcional (na abertura)|
|status_os|Atômico/Simples, Monovalorado, Obrigatório|
|defeito_relatado|Atômico/Simples, Monovalorado, Obrigatório|
|diagnostico_tecnico|Atômico/Simples, Monovalorado, Opcional (na abertura)|
|forma_pagamento|Atômico/Simples, Monovalorado, Opcional (no fechamento)|
|preço_total|Derivado (Calculado: ∑▒"Peças" +∑▒"Serviços" )|
|validade_orcamento|Derivado (Calculado: data_entrada + 10 dias)|
|prazo_garantia|Derivado (Calculado: data_saida + 90 dias)|

- **Entidade PECA:**
  
| Atributo | Classificação do atributo |	
| -------- | -------- |	
|id_item_peca|Identificador (Chave Primária), Simples, Monovalorado|
|descricao_peca|Atômico/Simples, Monovalorado, Obrigatório|
|codigo_referencia|Atômico/Simples, Monovalorado, Opcional|
|preço_custo|Atômico/Simples, Monovalorado, Obrigatório|
|preço_venda|Atômico/Simples, Monovalorado, Obrigatório|
|qtd_estoque|Atômico/Simples, Monovalorado, Obrigatório|
|estoque_minimo|Atômico/Simples, Monovalorado, Obrigatório|

- **Entidade SERVICO:**

| Atributo | Classificação do atributo |	
| -------- | -------- |	
|id_servico|Identificador (Chave Primária), Simples, Monovalorado|
|nome_servico|Atômico/Simples, Monovalorado, Obrigatório|
|preço_padrao|Atômico/Simples, Monovalorado, Obrigatório|

- **Relacionamentos Pertinentes e Cardinalidades**

	**CLIENTE possui VEICULO**
	- Mapeamento: Um cliente pode possuir uma ou várias motos cadastradas na oficina, mas cada moto cadastrada pertence obrigatoriamente a apenas um cliente.
	- Cardinalidade: CLIENTE (0,N) <---- possui ----> (1,1) VEICULO

	**VEICULO gera ORDEM_SERVICO**
	- Mapeamento: Uma moto cadastrada pode passar por diversas Ordens de Serviço ao longo do tempo (ou nenhuma se acabou de ser cadastrada). Toda OS refere-se obrigatoriamente a uma única moto.
	- Cardinalidade: VEICULO (0,N) <---- gera ----> (1,1) ORDEM_SERVICO

	**ORDEM_SERVICO contém PECA**
	- Mapeamento: Uma OS pode utilizar zero ou várias peças. Uma peça cadastrada pode ser usada em várias OSs ao longo do tempo.
	- Relacionamento Conceitual: N:M (Muitos para Muitos).

	**ORDEM_SERVICO (0,N) <---- contém ----> (0,N) PECA**
	- Mapeamento: Uma Ordem de Serviço pode utilizar nenhuma, uma ou várias peças. Uma peça cadastrada pode ser utilizada em nenhuma, uma ou várias Ordens de Serviço ao longo do tempo.
	- Relacionamento Conceitual: N:M (Muitos para Muitos).

	**ORDEM_SERVICO inclui SERVICO** 
	- Mapeamento: Uma OS deve ter ao menos um serviço registrado (ou múltiplos). Um serviço do catálogo pode ser executado em várias OSs.
	- Relacionamento Conceitual: N:M (Muitos para Muitos).

	**ORDEM_SERVICO (1,N) <---- possui ----> (0,N) SERVICO**
  	- Mapeamento: Uma Ordem de Serviço deve possuir pelo menos um serviço registrado, podendo possuir vários. Um serviço do catálogo pode ser utilizado em nenhuma, uma ou várias Ordens de Serviço.
	- Relacionamento Conceitual: N:M (Muitos para Muitos).

- **Restrições e Políticas Organizacionais Aplicadas ao Modelo**

	**Integridade Referencial e Proteção de Dados (RN03 / RNF03):**
	- O modelo proíbe a exclusão física de registros de CLIENTE ou VEICULO que possuam vínculos ativos na tabela ORDEM_SERVICO, preservando a rastreabilidade fiscal e histórica da oficina.
	
	**Prevenção de Ruína Financeira e Estoque Negativo (RN02 / RO03):**
	- A entidade PECA valida a quantidade solicitada contra a qtd_estoque. Se quantidade > qtd_estoque, a associação é rejeitada pelo sistema.
	O fechamento da OS exige a presença de um preço válido no atributo forma_pagamento (restringindo pagamentos a vista ou cartão).
	
	**Conformidade Legal e Defesa do Consumidor (RO02):**
	- Os atributos derivados validade_orcamento e prazo_garantia são aplicados sobre as datas da ORDEM_SERVICO, garantindo que a oficina não descumpra prazos contratuais de 10 dias de orçamento e 90 dias de garantia previstos no CDC.
	
	**Representação do Valor Total da Ordem de Serviço::**
	- O atributo preço_total pertence à entidade ORDEM_SERVICO e é classificado como um atributo derivado, pois representa a soma dos valores dos serviços e das peças relacionados à Ordem de Serviço. Dessa forma, o modelo conceitual permite representar o valor total previsto para cada atendimento sem adicionar entidades associativas ao modelo.

## 7. Diagrama Entidade-Relacionamento (DER)
Este diagrama representa o modelo conceitual do banco de dados da oficina mecânica, estruturado para garantir integridade referencial, histórico de transações e facilidade de expansão.

 <img width="1108" height="621" alt="DER" src="https://github.com/user-attachments/assets/a244aa22-8c5d-4424-adeb-58b5199571e9" />


## 8. Justificativa Técnica

**A. Separação entre CLIENTE e VEICULO**
- Decisão: Modelar CLIENTE e VEICULO como entidades distintas conectadas por um relacionamento 1:N.
- Por que não unificar em uma única tabela? Se os dados do proprietário fossem armazenados dentro do cadastro da moto, o mesmo cliente com mais de um veículo (ex: uma moto para trabalho e outra para passeio) teria seus dados pessoais (CPF, telefone, endereço) duplicados para cada veículo. A separação garante a 3ª Forma Normal (3FN), elimina redundância cadastral e simplifica a atualização do telefone ou endereço do cliente em um único ponto do sistema.
	
**B. Relacionamentos entre ORDEM_SERVICO, PECA e SERVICO**
- Decisão: Representar os relacionamentos entre ORDEM_SERVICO e PECA e entre ORDEM_SERVICO e SERVICO como relacionamentos N:N.
- Uma Ordem de Serviço pode utilizar nenhuma, uma ou várias peças, enquanto uma peça pode ser utilizada em diversas Ordens de Serviço. Da mesma forma, uma Ordem de Serviço pode incluir um ou vários serviços, enquanto um serviço pode estar presente em diversas Ordens de Serviço. O valor total da Ordem de Serviço é representado pelo atributo derivado preço_total, obtido a partir dos itens e serviços relacionados à OS.

**C. Escolha de Cardinalidades Específicas**
- CLIENTE (0,N) <---> (1,1) VEICULO: A cardinalidade mínima 0 do lado do cliente permite que uma pessoa seja cadastrada antes mesmo da entrada física da moto na oficina (ex: orçamento telefônico). A cardinalidade mínima 1 e máxima 1 do lado do veículo garante integridade referencial: nenhuma moto pode existir no banco sem um proprietário responsável.
- ORDEM_SERVICO (1,N) <---> (0,N) SERVICO: Define-se cardinalidade mínima 1 para serviços, pois não existe sentido operacional em abrir uma Ordem de Serviço em uma oficina sem a prestação de ao menos uma mão de obra ou serviço de diagnóstico.
- ORDEM_SERVICO (0,N) <---> (0,N) PECA: A cardinalidade mínima é 0 do lado da peça porque existem regulagens e manutenções puramente mecânicas (ex: sangria de freio, regulagem de corrente, limpezas) que utilizam apenas mão de obra, sem consumo de estoque.

**D. Adequação ao Porte do Negócio vs. Evitar Overengineering**
- Por que não modelar entidades como MECANICO ou FORNECEDOR nesta etapa? O levantamento de requisitos identificou uma operação enxuta com apenas dois atores ativos (o mecânico/dono e a esposa na recepção). Criar tabelas e telas para gestão de múltiplos mecânicos ou cadastros complexos de fornecedores geraria complexidade desnecessária (overengineering) para o uso diário dos usuários. A modelagem priorizou a agilidade no atendimento sem fechar portas para o futuro: a inclusão de uma chave estrangeira id_mecanico na tabela ORDEM_SERVICO pode ser feita em etapas subsequentes sem exigir reformulação do esquema existente.

**E. Representação de Atributos Derivados e Prazos**
- Decisão: Representar preço_total, validade_orcamento e prazo_garantia como atributos derivados da entidade ORDEM_SERVICO.
- Defesa: Esses atributos podem ser obtidos a partir de outros dados da Ordem de Serviço. O preço_total é obtido a partir dos valores dos serviços e peças relacionados à OS, enquanto a validade_orcamento e o prazo_garantia são obtidos a partir das respectivas datas do atendimento.


## 9. Uso de Inteligência Artificial

| Item | O que registrar |
|------|------------------|
| **Ferramenta e etapa** | usamos o e Claude Sonnet 5.5 médio e Gemini 2.5 (3.6 flash/estendido) Somente usado para pesquisa com algumas correções, uso de imagem e ferramentas internas.|
| **Motivação** | Porque ela faz o trabalho pesado e é uma ótima ferramenta para suporte. |
| **Prompt(s) utilizados** | Sou estudante de 2 semestre de GTI, estou fazendo um trabalho que tem foco usar modelagem de banco de dados em um sistema com um tema abordado de uma empresa de escolha de cada grupo. eu escolhi mecânica e tive que fazer uma entrevista com um mecânico pessoalmente e a oficina dele é pequena sendo o mecânico Dono e só ele trabalha com a esposa dele (ela n faz os reparos das motos). O que eu quero é os requisitos funcionais e não funcionais para eu adicionar ao meu trabalho que será usado para fazer um sistema que beneficie a oficina. |
|          | Poderia verificar se o texto: RF04 - Garantia de serviço de 90 dias na data da realização do serviço realizado. Esta de acordo com o restante. |
|          | Conforme a revisão documento em anexo. o RF11 fica como melhoria para inserção de revisão e inclusão. |
|          | Poderia ajustar esse item com os itens ausente com as justificativas, segue o modelo: Cobertura das Regras de Negócio (Critério 8)|
|As informações que coletamos com o mecânico:| |Agendamento não possui apenas entrega a moto.|
|          | Prazo para reparo até 2 dias problemas complexos sem prazo.
|          |Compra de peças, compra direto com o distribuidor, não tendo prazo para e entrega, pois comparece na loja ou local.
|          | Não emitem nota fiscal pois tem muito burocracia. Possui a capacidade do local de 30 motos.|
| **Resposta recebida** | Todas as respostas foram usadas no esqueleto da entrega com algumas alterações em descrições.
|          |RF04 - Recebimento de Peças, Controle de Estoque e Garantia: RF04 - Registrar o recebimento de peças (peça, quantidade e valor de custo), somando a quantidade ao saldo em estoque, e registrar automaticamente a garantia de 90 dias a partir da data de saída ao encerrar a OS.
|          |RF11 - Contas a Pagar (melhoria): Registrar as compras de peças e insumos/consumíveis (óleo, graxa, velas etc.) utilizados nos serviços da oficina, informando descrição, valor, data da compra, data de vencimento e situação (Pendente ou Pago), permitindo consultar os valores a pagar e os já quitados.|
| **Fontes consultadas e verificadas** | (https://www.ibm.com/br-pt/think/topics/entity-relationship-diagram) e https://www.ibm.com/docs/pt-br/cognos-analytics/12.0.x?topic=r-cardinality fora os matérias fornecidos no drive pelo professor da matéria (Fontes e materiais usados somente como função de estudo e duvidas pertinentes ao projeto) |
| **Trechos rejeitados ou corrigidos** | O código feito em Snippet por engano no critério 7º do esqueleto, Deveria ser uma imagem mas acabou tendo um equívoco da IA e ela fez o código, correção onde a IA informa ter que criar entidades que não fazem parte do modelo conceitual |
| **Justificativa da escolha final** | Houve ajustes e a IA sempre foi essencial em trabalhos que manualmente levaria mais tempo para ser finalizado tal como uma ótima ferramenta para revisar os updates feitos, então considerando que a revisão com a IA e com os colaboradores do grupo estavam alinhadas é possível dizer que estamos satisfeitos com a finalização do projeto. |
| **Reflexão crítica** | Como informado o uso da IA se teve pela ideia de otimizar tempo, nós como colaboradores entendemos que a IA deve e foi utilizada como uma ferramenta de suporte, fizemos uma revisão constante a partir do uso da ferramenta para prevenir erros.|




## 10. Normalização do Banco de Dados

A normalização tem como objetivo organizar os dados, reduzir duplicidades e evitar inconsistências durante as operações do sistema.

### Primeira Forma Normal (1FN)

Cada tabela deve possuir uma chave primária e armazenar valores atômicos, ou seja, cada campo deve conter um único valor por registro.

No projeto, os dados dos clientes ficam separados dos dados dos veículos, e as peças e os serviços possuem seus próprios cadastros. Isso evita armazenar várias peças ou serviços em um único campo da ordem de serviço.

### Segunda Forma Normal (2FN)

A segunda forma normal exige que a tabela esteja na 1FN e que todos os atributos não-chave dependam da chave primária completa.

Nas tabelas intermediárias que relacionam ordens de serviço com peças e serviços, os dados específicos de cada item devem depender da identificação do item na respectiva ordem de serviço. Os dados gerais das peças e dos serviços permanecem em suas tabelas próprias.

### Terceira Forma Normal (3FN)

A terceira forma normal exige que a tabela esteja na 2FN e que os atributos não-chave dependam diretamente da chave primária, sem dependências transitivas indevidas.

No projeto, os dados de identificação e contato ficam na tabela CLIENTE, os dados das motocicletas ficam em VEICULO, o catálogo de peças fica em PECA e o catálogo de serviços fica em SERVICO. A ORDEM_SERVICO registra o atendimento realizado.

Essa separação facilita a manutenção dos dados e reduz a necessidade de repetir informações em diferentes registros.

**Observação:** a confirmação formal das formas normais deve ser feita após a finalização do modelo lógico, verificando as dependências funcionais e as chaves de cada tabela.

## 11. Dicionário de Dados

O dicionário de dados descreve as entidades utilizadas no sistema de gestão da oficina, seus atributos, regras de preenchimento e relacionamentos.

**11.1 Entidades, atributos e relacionamentos**

O projeto contempla as seguintes entidades principais:

* **CLIENTE:** identifica os proprietários das motocicletas e armazena seus dados cadastrais.
* **VEICULO:** armazena placa, modelo, marca, ano, cor e quilometragem da motocicleta.
* **ORDEM_SERVICO:** registra a entrada da motocicleta, o defeito relatado, o diagnóstico, o status e as informações de atendimento.
* **PECA:** mantém o cadastro de peças, referências comerciais, custos, preços e quantidades em estoque.
* **ITEM_OS_PECA:** entidade associativa que relaciona as ordens de serviço às peças utilizadas, registrando quantidade, preço de custo e preço de venda.
* **ITEM_OS_SERVICO:** entidade associativa que relaciona as ordens de serviço aos serviços realizados, registrando quantidade, preço unitário e subtotal.

**Relacionamentos e cardinalidades**

Os relacionamentos do modelo representam as associações entre as entidades e definem quantos registros podem estar relacionados entre si.

* **CLIENTE e VEICULO — Rel:** um cliente pode estar relacionado a zero ou vários veículos, enquanto cada veículo está relacionado a exatamente um cliente.
* **VEICULO e ORDEM_SERVICO — Gera:** um veículo pode gerar zero ou várias ordens de serviço, enquanto cada ordem de serviço está vinculada a exatamente um veículo.
* **ORDEM_SERVICO e ITEM_OS_PECA — Contém:** uma ordem de serviço pode conter zero ou vários itens de peças, enquanto cada item de peça pertence a exatamente uma ordem de serviço.
* **ITEM_OS_PECA e PECA:** cada item de peça está relacionado a exatamente uma peça, enquanto uma peça pode estar presente em zero ou vários itens de ordens de serviço.
* **ORDEM_SERVICO e ITEM_OS_SERVICO — Contém:** uma ordem de serviço pode conter zero ou vários itens de serviços, enquanto cada item de serviço pertence a exatamente uma ordem de serviço.
* **ITEM_OS_SERVICO e SERVICO:** cada item de serviço está relacionado a exatamente um serviço do catálogo, enquanto um serviço pode estar presente em zero ou vários itens de ordens de serviço.

As entidades associativas permitem registrar quantidades e valores específicos de cada item em uma ordem de serviço, preservando o histórico dos preços praticados e possibilitando que uma mesma peça ou serviço seja utilizado em diferentes atendimentos.

**Atributos**

**Cliente**

Armazena os dados cadastrais dos clientes da oficina.

| Atributo | Descrição              | Tipo (MySQL) | Chave | Obrigatório | Regra/Restrição | 
|----------|------------------------|--------------|-------|-------------|-----------------|
|ID_Cliente|Identificador do cliente|INT           |PK     |Sim			 |AUTO_INCREMENT   |
|Nome      |Nome do cliente         |VARCHAR(100)  |-      |Sim          |Nome cadastrado  |
|CPF       |CPF do cliente          |CHAR(11)      |-	   |Sim          |Válido e único   |
|Telefone  |Telefone de contato     |VARCHAR(20)   |-	   |Sim          |Incluir DDD      |
|Endereço  |Endereço completo       |VARCHAR(200)  |-	   |Sim          |-                |
|Logradouro|Rua ou avenida          |VARCHAR(150)  |-	   |Não          |-                |
|Bairro    |Bairro do cliente       |VARCHAR(100)  |-	   |Não          |-                |

**VEICULO**

Registra as motocicletas vinculadas aos clientes.

| Atributo | Descrição              | Tipo (MySQL) | Chave | Obrigatório | Regra/Restrição    | 
|----------|------------------------|--------------|-------|-------------|--------------------|
|ID_Veiculo|Identificador do veiculo|INT           |PK     |Sim			 |AUTO_INCREMENT      |
|Ano       |Ano de fabricação/modelo|YEAR          |-      |Sim          |Ano válido          |
|Marca     |Marca da motocicleta    |VARCHAR(60)   |-	   |Sim          |Não pode ficar vazio|
|Modelo    |Modelo da motocicleta   |VARCHAR(80)   |-	   |Sim          |Não pode ficar vazio|
|Placa     |Placa de identificação  |VARCHAR(7)    |-	   |Sim          |Única               |
|KM_atual  |Quilometragem atual     |INT           |-	   |Não          |> ou = a zero       |
|ID_Cliente|Cliente proprietário    |INT           |FK	   |Sim          |Referencia Cliente  |
|Cor       |Cor da motocicleta      |VARCHAR(40)   |-	   |Sim          |Cor cadastrada      |

**ORDEM_SERVICO**

Registra os atendimentos e serviços realizados nas motocicletas.

| Atributo          | Descrição                     | Tipo (MySQL)  | Chave | Obrigatório | Regra/Restrição       | 
|-------------------|-------------------------------|---------------|-------|-------------|-----------------------|
|Numero_OS          |identificador da ordem         |INT            |PK     |Sim		  |AUTO_INCREMENT         |
|Data_entrada       |Data e hora de entrada         |DATETIME       |-      |Sim          |Registrar a entrada    |
|Data_prevista      |Previsão de conclusão          |DATETIME       |-	    |Não          |-                      |
|Status_OS          |Situação da ordem              |VARCHAR(30)    |-	    |Sim          |-                      |
|Defeito_relatado   |Problema informado             |TEXT           |-	    |Sim          |relatar a reclamação   |
|Diagnostico_Tecnico|Diagnóstico realizado          |TEXT           |-	    |Não          |-                      |
|Prazo_garantia     |garantia do serviço            |DATE           |-	    |Sim          |-                      |
|Validade_orcamento |Data limite de validade        |DATE           |-	    |Não          |-                      |
|Forma_pagamento    |Forma de pagamento acordada    |VARCHAR(30)    |-	    |Não          |Utilizar opções aceitas|
|Preco_total        |preço total da ordem de serviço|DECIMAL(10,2)  |-	    |Não          |= ou > a zero          |
|ID_Veiculo         |Veículo atendido               |INT            |FK	    |Sim          |Referencia Veiculo     |

**PECA**

Mantém o cadastro das peças e o controle de estoque.
 
| Atributo         | Descrição                      | Tipo (MySQL)| Chave | Obrigatório | Regra/Restrição    | 
|------------------|--------------------------------|-------------|-------|-------------|--------------------|
|ID_Peca           |Identificador da peça           |INT          |PK     |Sim		    |AUTO_INCREMENT      |
|Preco_Custo       |Custo de aquisição da peça      |DECIMAL(10,2)|-      |Sim          |> ou = a zero       |
|Preco_Venda       |Preço de venda da peça          |DECIMAL(10,2)|-	  |Sim          |> ou = a zero       |
|Estoque_Minimo    |Quantidade mínima de estoque    |INT          |-	  |Sim          |> ou = a zero       |
|Quantidade_Estoque|Quantidade disponível em estoque|INT          |-	  |Sim          |> ou = a zero       |
|Codigo_Referencia |Código de referência comercial  |VARCHAR(50)  |-	  |Sim          |Única               |
|Descricao_Peca    |Descrição da peça               |VARCHAR(150) |-	  |Sim          |Não pode ficar vazio|

**SERVIÇO**

Armazena o catálogo de serviços oferecidos pela oficina.

| Atributo        | Descrição              | Tipo (MySQL) | Chave | Obrigatório | Regra/Restrição    | 
|-----------------|------------------------|--------------|-------|-------------|--------------------|
|ID_Servico       |Identificador do serviço|INT           |PK     |Sim		    |AUTO_INCREMENT      |
|Nome_Servico     |Nome do serviço         |VARCHAR(100)  |-      |Sim          |Não pode ficar vazio|
|Preco_Padrao     |Preço padrão do serviço |DECIMAL(10,2) |-	  |Sim          |> ou = a zero       |
|Descricao_Servico|Descrição do serviço    |TEXT          |-	  |Não          |-                   |

**ITEM_OS_PECA**

Relaciona uma ordem de serviço às peças utilizadas, permitindo registrar quantidades e valores específicos para cada atendimento.

| Atributo   | Descrição                     	| Tipo (MySQL) | Chave | Obrigatório | Regra/Restrição        | 
|------------|----------------------------------|--------------|-------|-------------|------------------------|
|ID_Item_Peca|Identificador do item de peça     |INT           |PK     |Sim		     |AUTO_INCREMENT          |
|Quantidade  |Quantidade de peças utilizadas    |INT           |-      |Sim          |Maior que zero          |
|Preco_Custo |Custo unitário da peça no registro|DECIMAL(10,2) |-	   |Não          |> ou = a zero           |
|Preco_Venda |Preço unitário de venda           |DECIMAL(10,2) |-	   |Não          |> ou = a zero           |
|Numero_OS   |Ordem de serviço relacionada      |INT           |FK	   |Sim          |Referencia ORDEM_SERVICO|
|ID_Peca     |Peça utilizada                    |INT           |FK	   |Sim          |Referencia PECA         |

**ITEM_OS_SERVICO**

Relaciona os serviços executados às ordens de serviço.

| Atributo      | Descrição                      | Tipo (MySQL) | Chave | Obrigatório | Regra/Restrição           | 
|---------------|--------------------------------|--------------|-------|-------------|---------------------------|
|ID_Item_Servico|Identificador do item de serviço|INT           |PK     |Sim		  |AUTO_INCREMENT             |
|Quantidade     |Quantidade registrada do serviço|INT           |-      |Sim          |Maior que zero             |
|Preco_Unitario |Preço unitário praticado        |DECIMAL(10,2) |-	    |Sim          |> ou = a zero              |
|Sub_Total      |Preço total do item             |DECIMAL(10,2) |-	    |Não          |Quantidade × preço unitário|
|Numero_OS      |Ordem de serviço relacionada    |INT           |FK	    |Sim          |Referencia ORDEM_SERVICO   |
|ID_Servico     |Serviço executado               |INT           |FK	    |Sim          |Referencia SERVICO         |

**11.2 Fluxo de dados**


**11.3 Convenções adotadas**


**11.4 Especificação física**


**11.5 Log de acesso**


**11.6 Controle de acesso e LGPD**


## 12. Proposta de Business Intelligence (BI)

A utilização de BI permitirá transformar os dados registrados pelo sistema em informações úteis para a administração da oficina.

### Indicadores propostos (KPIs)

**KPI 1 — Ordens de serviço concluídas por mês**

* Objetivo: acompanhar o volume de atendimentos finalizados.
* Fórmula: quantidade de ordens de serviço concluídas no mês.
* Periodicidade: mensal.
* Tabelas envolvidas: ORDEM_SERVICO.
* Consulta prevista: G01.

**KPI 2 — Faturamento por período**

* Objetivo: acompanhar o valor dos serviços e das peças vendidos pela oficina.
* Fórmula: soma dos valores efetivamente cobrados nas ordens de serviço finalizadas e pagas, conforme os registros financeiros disponíveis.
* Periodicidade: mensal.
* Tabelas envolvidas: ORDEM_SERVICO e tabelas de itens.
* Consulta prevista: G02.

**KPI 3 — Peças abaixo do estoque mínimo**

* Objetivo: identificar peças que precisam de reposição.
* Fórmula: contagem de peças cujo estoque atual é inferior ao estoque mínimo cadastrado.
* Periodicidade: diária.
* Tabela envolvida: PECA.
* Consulta prevista: G03.

**KPI 4 — Tempo médio de atendimento**

* Objetivo: avaliar o tempo entre a entrada da motocicleta e a conclusão do serviço.
* Fórmula: média do intervalo entre data de entrada e data de saída das ordens de serviço concluídas.
* Periodicidade: mensal.
* Tabela envolvida: ORDEM_SERVICO.
* Consulta prevista: G04.

As consultas identificadas como G01 a G04 deverão ser implementadas no script SQL e associadas aos indicadores correspondentes. Os resultados deverão ser validados com dados fictícios coerentes antes da apresentação.

## 13. Proposta de Inteligência Artificial (IA)

A Inteligência Artificial poderá ser utilizada futuramente como ferramenta de apoio à análise e à tomada de decisões da oficina.

### Aplicações propostas

**1. Previsão de demanda de peças**

A análise do histórico de utilização das peças poderá ajudar a identificar itens com maior procura e apoiar o planejamento de compras.

**2. Apoio ao diagnóstico**

O histórico de defeitos relatados, diagnósticos técnicos e serviços executados poderá auxiliar os mecânicos na consulta de ocorrências semelhantes. A decisão final continuará sob responsabilidade do profissional.

**3. Análise do tempo de atendimento**

A análise dos registros de entrada e saída poderá identificar serviços que frequentemente ultrapassam os prazos previstos e auxiliar no planejamento da agenda.

### Limitações e cuidados

As propostas dependem da existência de dados históricos suficientes, consistentes e atualizados. A IA deverá ser utilizada como apoio, sem substituir a avaliação técnica dos mecânicos.

Os dados pessoais dos clientes deverão ser protegidos, com acesso restrito e utilização apenas para finalidades justificadas.

## 14. Consultas Gerenciais e de Auditoria

As consultas SQL deverão demonstrar como o banco de dados contribui para resolver os problemas identificados na oficina.

### Consultas gerenciais

* **G01:** quantidade de ordens de serviço concluídas por mês.
* **G02:** faturamento por período.
* **G03:** peças com estoque abaixo do mínimo.
* **G04:** tempo médio de atendimento.

### Consultas de auditoria

* **A01:** verificar ordens de serviço sem cliente ou veículo válido.
* **A02:** identificar ordens de serviço sem itens de peças ou serviços quando isso contrariar as regras definidas para o atendimento.
* **A03:** verificar possíveis inconsistências entre estoque, quantidades utilizadas e registros de movimentação.

Cada consulta deverá possuir um cabeçalho SQL com seu código, objetivo e problema ou regra de negócio atendida. Os nomes e as regras definitivas deverão corresponder à estrutura efetivamente implementada.

## 15. Organização do Repositório

O repositório deverá manter os arquivos necessários para compreender, executar e avaliar o projeto.

* `README.md`: relatório técnico principal.
* `docs/`: scripts SQL e massa de dados fictícios.
* `levantamento/`: texto organizado do levantamento e da entrevista.
* `der/`: DER conceitual revisado.
* `modelo-logico/`: modelo lógico elaborado no brModelo.
* `dicionario-de-dados/`: dicionário de dados definitivo, no formato solicitado para a turma.
* Arquivos de evidência: fotografias JPG ou PNG da organização.

Os arquivos complementares deverão ser referenciados por links no README. O histórico de commits deve demonstrar a participação dos integrantes ao longo do desenvolvimento.

## 16. Registro do Uso de Inteligência Artificial

O grupo informou que utilizou o Gemini 2.5 para pesquisas e apoio durante o desenvolvimento do projeto.

O registro deve identificar a ferramenta, a etapa em que foi utilizada, a motivação, os prompts empregados, as respostas recebidas, as fontes verificadas, os trechos rejeitados ou corrigidos e uma reflexão crítica sobre suas limitações.

O grupo também registrou que revisou sugestões e corrigiu partes que não correspondiam ao modelo conceitual. Esse procedimento deve ser mantido durante a Entrega 2, documentando também os usos adicionais de IA realizados nesta etapa.

## 17. Considerações Finais

O modelo proposto busca organizar as informações da Jackson Moto Peças, melhorar o controle de ordens de serviço e estoque e facilitar a consulta ao histórico de atendimento das motocicletas.

A implementação em MySQL permitirá validar as regras de integridade e executar consultas gerenciais e de auditoria. A partir dos dados registrados, as propostas de BI e IA poderão apoiar o planejamento da oficina e a tomada de decisões.

A conclusão definitiva do projeto depende da revisão do modelo lógico, da execução dos scripts SQL, da validação das consultas e da conferência de todos os artefatos exigidos na Entrega 2.

