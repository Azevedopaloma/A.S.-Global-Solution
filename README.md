# A.S.-Global-Solution
Nome do App: Energia Smart Segmento escolhido: Setor residencial Objetivo: Criar um aplicativo que ajude os usuários residenciais a monitorar o consumo de energia elétrica em tempo real, identificar equipamentos que mais consomem energia, e fornecer sugestões simples de economia.
1. Prototipação (Mockup Não Funcional)
Tela 1: Tela Inicial/Login
Campos de login (e-mail e senha).
Opção de cadastro rápido com nome, e-mail e senha.
Botão para continuar.

Tela 2: Dashboard de Consumo
Gráfico simples mostrando o consumo diário/mensal.
Indicador de consumo atual em kWh (real-time).
Sugestões rápidas de economia (ex.: "Desligue aparelhos em stand-by").

Tela 3: Lista de Equipamentos
Lista com equipamentos conectados ao sistema (ex.: ar-condicionado, geladeira, TV).
Consumo em tempo real de cada equipamento.
Botão para visualizar mais detalhes.

Tela 4: Configurações
Opções para configurar metas de consumo mensal.
Configuração de alertas (ex.: "Alerta ao atingir 80% do consumo previsto").


2. Arquitetura de Microsserviços da Aplicação
A arquitetura será baseada em microsserviços escaláveis para garantir flexibilidade e eficiência. A seguir está a descrição de cada serviço:

Frontend (Mobile App)
Desenvolvido com frameworks como Flutter ou React Native para compatibilidade com Android e iOS.
Comunicação com a API backend via HTTP (REST).

Backend (Microsserviços)
Auth Service: Gerencia autenticação e autorização de usuários.
Consumption Monitoring Service: Recebe dados de dispositivos IoT conectados e fornece métricas de consumo em tempo real.
Recommendation Service: Gera sugestões com base no consumo do usuário.
Notification Service: Envia alertas por push ou e-mail sobre consumo elevado ou metas atingidas.

Database
Banco de dados relacional para armazenar dados dos usuários e suas configurações.
Banco NoSQL para armazenar dados de consumo em tempo real.

Integração com IoT
Dispositivos IoT residenciais comunicam-se via protocolos como MQTT ou ZigBee.
Gateway coleta dados e envia ao Consumption Monitoring Service.

3 . Boas Práticas de Gerenciamento de Memória:

No desenvolvimento do Energia Smart, foram adotadas várias boas práticas de gerenciamento de memória para garantir a eficiência do aplicativo, especialmente em dispositivos móveis com recursos limitados. 

Dispose de Controladores
Em telas que utilizam controladores de texto, como TextEditingController no login e configurações, foi implementado o método dispose(). Esse método garante que os recursos alocados pelos controladores sejam liberados quando o widget é removido da árvore de widgets, prevenindo vazamentos de memória.
Exemplo: Na tela de configurações, o controlador que armazena a meta de consumo mensal é liberado.

Uso de Widgets Constantes (const)
Elementos imutáveis, como textos, botões e ícones, foram declarados como constantes. Isso reduz o trabalho de renderização do Flutter, otimizando o uso de memória, pois os widgets constantes não precisam ser recriados durante atualizações na interface.

Reuso de Widgets
Componentes visuais comuns, como botões e listas, foram reutilizados sempre que possível para evitar redundância. Essa prática reduz a sobrecarga de memória, pois evita a criação desnecessária de novos objetos.
Exemplo: A tela de equipamentos utiliza um ListView, que renderiza itens dinamicamente apenas quando estão visíveis.

Gerenciamento de Rotas
Ao navegar entre telas, o Navigator.pop() é usado para liberar as telas anteriores quando não são mais necessárias. Isso garante que as rotas antigas sejam removidas da pilha de navegação, liberando memória.

Lazy Loading
Componentes visuais são carregados somente quando necessário. Por exemplo, na tela de lista de equipamentos, os dados são carregados sob demanda usando ListView, evitando a pré-renderização de componentes fora da área visível.

Estrutura Modular
Cada tela e funcionalidade do aplicativo é organizada em arquivos separados. Isso facilita a manutenção e minimiza a complexidade, evitando a criação desnecessária de estados compartilhados que poderiam consumir memória de forma ineficiente.

Análise e Diagnóstico
Durante o desenvolvimento, ferramentas como Flutter DevTools foram utilizadas para identificar widgets reconstruídos desnecessariamente e otimizar seu comportamento. Isso garante que apenas os widgets realmente necessários sejam reconstruídos durante as atualizações de estado.
