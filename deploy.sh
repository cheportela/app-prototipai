#!/bin/bash

# Criação das pastas para estrutura correta
mkdir -p public styles

# Mover os arquivos para as pastas correspondentes
mv precificaveis.html public/
mv user_story.html public/
mv styles_precificaveis.css styles/
mv user_story.css styles/

# Inicializa o Git se ainda não estiver inicializado
if [ ! -d ".git" ]; then
  git init
fi

# Adicionar as mudanças ao Git
git add .

# Fazer commit com uma mensagem padrão
git commit -m "Reorganize files for Vercel deployment"

# Verifica se o remoto origin já existe, se não existir adiciona
if ! git remote | grep -q "origin"; then
  git remote add origin <URL-DO-SEU-REPOSITORIO>
fi

# Fazer push para o repositório remoto
git push -u origin main
