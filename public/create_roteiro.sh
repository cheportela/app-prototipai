#!/bin/bash

# Navigate to the public directory
cd ~/Projetos/app-prototipai/public

# Remove existing files if they exist
rm -f roteiro.html styles/styles_roteiro.css

# Create roteiro.html
cat << 'EOF' > roteiro.html
<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <title>Roteiro de Esclarecimentos</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- Links para as fontes -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500&family=Manrope:wght@400;500&family=Pacifico&display=swap" rel="stylesheet">
  <!-- Font Awesome CSS -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
  <!-- Link para o arquivo CSS -->
  <link rel="stylesheet" href="styles/styles_roteiro.css">

</head>
<body>

  <!-- Menu Superior -->
  <nav class="navbar">
    <div class="navbar-logo">Prototipaí</div>
    <ul class="navbar-menu">
      <li><a href="inicio.html">Início</a></li>
      <li><a href="projetos.html">Projetos</a></li>
      <li><a href="configuracoes.html">Configurações</a></li>
    </ul>
  </nav>

  <!-- Container Principal -->
  <div class="main-container">
    <!-- Menu Lateral Passo a Passo -->
    <aside class="sidebar">
      <div class="sidebar-header">
        <button class="toggle-sidebar"><i class="fas fa-bars"></i></button>
      </div>
      <ul class="step-menu">
        <li class="step">
          <a href="index.html">
            <i class="fas fa-bullseye"></i>
            <span class="menu-text">Escopo</span>
          </a>
        </li>
        <li class="step">
          <a href="requisitos.html">
            <i class="fas fa-list-alt"></i>
            <span class="menu-text">Requisitos</span>
          </a>
        </li>
        <li class="step">
          <a href="user_story.html">
            <i class="fas fa-book-open"></i>
            <span class="menu-text">User Stories</span>
          </a>
        </li>
        <li class="step">
          <a href="prompts.html">
            <i class="fas fa-robot"></i>
            <span class="menu-text">Prompts</span>
          </a>
        </li>
        <li class="step">
          <a href="deploy.html">
            <i class="fas fa-cloud-upload-alt"></i>
            <span class="menu-text">Deploy</span>
          </a>
        </li>
      </ul>
    </aside>

    <!-- Conteúdo Principal -->
    <main class="content">
      <!-- Título e Informações -->
      <div class="content-header">
        <h1>Geração Automática de Jobs to be Done por IA</h1>
        <div class="project-info">
          <p><strong>Projeto:</strong> Nome do Projeto</p>
          <p><strong>Requisito:</strong> Geração Automática de Jobs to be Done por IA</p>
        </div>
      </div>

      <!-- Cards de Contradições e Pontos a Esclarecer -->
      <section class="clarification-section">
        <!-- Card de Contradições -->
        <div class="card">
          <h2><i class="fas fa-exclamation-triangle red-icon"></i> Contradições</h2>
          <ul>
            <li>
              Em um momento foi mencionado que a IA deve gerar JTBD a partir de termos de cauda longa, mas em outro momento foi dito que os termos de cauda longa já são os JTBD. Precisamos esclarecer este ponto.
            </li>
            <li>
              Foi dito que não seria necessária revisão humana dos JTBD gerados pela IA, mas em outro momento foi sugerido que uma revisão manual poderia ser necessária. Isto impacta o fluxo e o esforço de desenvolvimento.
            </li>
          </ul>
        </div>

        <!-- Card de Pontos a Esclarecer -->
        <div class="card">
          <h2><i class="fas fa-question-circle orange-icon"></i> Pontos a Esclarecer</h2>
          <ul>
            <li>
              A IA deve implementar alguma lógica de revisão automática dos JTBD gerados?
            </li>
            <li>
              Qual é o nível de integração necessário com APIs externas para a geração dos JTBD?
            </li>
            <li>
              Há necessidade de um processo manual no frontend para edição dos JTBD antes da publicação?
            </li>
          </ul>
        </div>

        <!-- Roteiro de Perguntas -->
        <div class="card">
          <h2><i class="fas fa-list blue-icon"></i> Roteiro de Perguntas</h2>
          <ol>
            <li>Como os JTBD serão utilizados dentro do sistema?</li>
            <li>Qual é a fonte dos termos de cauda longa? Eles são fornecidos ou gerados?</li>
            <li>Existe preferência por alguma tecnologia ou linguagem para a implementação da IA?</li>
            <!-- Adicione mais perguntas conforme necessário -->
          </ol>
        </div>
      </section>

    </main>
  </div>

  <!-- Scripts -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>
  <script>
    document.addEventListener('DOMContentLoaded', () => {
      const toggleSidebarBtn = document.querySelector('.toggle-sidebar');
      const sidebar = document.querySelector('.sidebar');

      toggleSidebarBtn.addEventListener('click', () => {
        sidebar.classList.toggle('collapsed');
      });
    });
  </script>

</body>
</html>
EOF

# Create styles/styles_roteiro.css
cat << 'EOF' > styles/styles_roteiro.css
/* Importação das Fontes */
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500&family=Manrope:wght@400;500&family=Pacifico&display=swap');

/* Definição das Cores */
:root {
  --primary-color: #216fc8;
  --secondary-color: #1A5FA8;
  --background-color: #F7F8FA;
  --card-background: #FFFFFF;
  --text-color: #333333;
  --button-color: #2d7cd2;
  --button-text-color: #FFFFFF;
  --sidebar-bg: #2d7cd2;
  --sidebar-text-color: #FFFFFF;
  --navbar-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  --transition-speed: 0.3s;
}

/* Reset CSS */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

/* Estilos do Body */
body {
  font-family: 'Inter', sans-serif;
  background-color: var(--background-color);
  color: var(--text-color);
}

/* Menu Superior */
.navbar {
  display: flex;
  align-items: center;
  justify-content: center;
  background-color: var(--background-color);
  padding: 15px 30px;
  box-shadow: var(--navbar-shadow);
  position: relative;
  z-index: 1000;
}

.navbar-logo {
  font-family: 'Pacifico', cursive;
  font-size: 1.8rem;
  color: var(--primary-color);
  font-weight: 400;
  position: absolute;
  left: 30px;
}

.navbar-menu {
  list-style: none;
  display: flex;
  gap: 30px;
}

.navbar-menu a {
  text-decoration: none;
  color: var(--text-color);
  font-weight: 500;
  transition: color var(--transition-speed);
}

.navbar-menu a:hover {
  color: var(--primary-color);
}

/* Container Principal */
.main-container {
  display: flex;
  min-height: calc(100vh - 70px);
}

/* Menu Lateral */
.sidebar {
  width: 250px;
  background-color: var(--sidebar-bg);
  color: var(--sidebar-text-color);
  padding: 30px 15px;
  border-right: 1px solid #E0E0E0;
  transition: width var(--transition-speed);
  position: relative;
  display: flex;
  flex-direction: column;
}

.sidebar.collapsed {
  width: 70px;
}

.sidebar-header {
  display: flex;
  justify-content: flex-end;
  margin-bottom: 20px;
}

.toggle-sidebar {
  background: none;
  border: none;
  color: var(--sidebar-text-color);
  font-size: 1.5rem;
  cursor: pointer;
  transition: color var(--transition-speed);
}

.toggle-sidebar:hover {
  color: var(--primary-color);
}

.step-menu {
  list-style: none;
  padding: 0;
  margin-top: 20px;
  flex-grow: 1;
}

.step {
  margin-bottom: 15px;
}

.step a {
  display: flex;
  align-items: center;
  text-decoration: none;
  color: var(--sidebar-text-color);
  padding: 10px;
  border-radius: 8px;
  transition: background-color var(--transition-speed), color var(--transition-speed);
}

.step a:hover {
  background-color: rgba(255, 255, 255, 0.1);
  color: var(--secondary-color);
}

.step i {
  font-size: 1.2rem;
  width: 25px;
  text-align: center;
}

.menu-text {
  font-size: 0.9rem;
  margin-left: 10px;
  transition: opacity var(--transition-speed);
}

.sidebar.collapsed .menu-text {
  opacity: 0;
  pointer-events: none;
}

/* Área de Conteúdo */
.content {
  flex: 1;
  padding: 40px 60px;
  background-color: var(--background-color);
  transition: padding var(--transition-speed);
}

.content-header {
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  margin-bottom: 30px;
}

.content-header h1 {
  font-family: 'Manrope', sans-serif;
  font-size: 1.8rem;
  color: var(--primary-color);
  font-weight: 700;
}

.project-info {
  font-size: 1rem;
  color: var(--text-color);
  margin-top: 10px;
}

.project-info p {
  margin-bottom: 5px;
}

/* Seção de Esclarecimentos */
.clarification-section .card {
  background-color: var(--card-background);
  padding: 15px 20px;
  margin-bottom: 20px;
  border-radius: 12px;
  box-shadow: 0 4px 12px rgba(0,0,0,0.05);
  transition: box-shadow var(--transition-speed), transform var(--transition-speed);
}

.clarification-section .card:hover {
  box-shadow: 0 6px 18px rgba(0,0,0,0.1);
  transform: translateY(-2px);
}

.clarification-section h2 {
  font-family: 'Manrope', sans-serif;
  font-size: 1.2rem;
  color: var(--primary-color);
  margin-bottom: 15px;
}

.clarification-section ul, .clarification-section ol {
  margin-left: 20px;
}

.clarification-section li {
  margin-bottom: 8px;
  line-height: 1.5;
  font-size: 0.9rem;
}

/* Icon Colors */
.red-icon {
  color: #dc3545;
  margin-right: 8px;
}

.orange-icon {
  color: #fd7e14;
  margin-right: 8px;
}

.blue-icon {
  color: #007bff;
  margin-right: 8px;
}

/* Responsividade */
@media (max-width: 768px) {
  .main-container {
    flex-direction: column;
  }

  .sidebar {
    width: 100%;
    border-right: none;
    border-bottom: 1px solid #E0E0E0;
    padding: 20px 15px;
  }

  .sidebar.collapsed {
    width: 100%;
  }

  .toggle-sidebar {
    display: none;
  }

  .menu-text {
    display: block;
  }

  .content {
    padding: 20px;
  }

  .content-header {
    flex-direction: column;
    align-items: flex-start;
  }

  .content-header h1 {
    margin-bottom: 10px;
  }

  .project-info {
    margin-top: 10px;
  }

  .sidebar.collapsed .menu-text {
    opacity: 1;
    pointer-events: auto;
  }
}

/* Remover sublinhado de todos os links */
a {
  text-decoration: none;
}

/* Garantir que os ícones fiquem brancos */
.sidebar i {
  color: var(--sidebar-text-color);
}

/* Ajuste para não comprimir os ícones na sidebar retraída */
.sidebar.collapsed .step a {
  justify-content: center;
}

.sidebar.collapsed .step a i {
  margin-right: 0;
  text-align: center;
  width: 100%;
}
EOF

echo "Files roteiro.html and styles/styles_roteiro.css have been updated successfully."
