Aluno: Kathleen Alves
Email: kathleenddeveloper@gmail.com

# My Personal Library

Este é um projeto desenvolvido como parte do curso de Ruby on Rails. O objetivo é aplicar os conceitos aprendidos em aula para criar uma aplicação web funcional, bem estruturada e com boas práticas de desenvolvimento.

## 📦 Tecnologias Utilizadas

- [Ruby](https://www.ruby-lang.org/pt/) 3.2.2
- [Ruby on Rails](https://rubyonrails.org/) 7.0.7
- [PostgreSQL](https://www.postgresql.org/) 16.9
- [Sidekiq](https://sidekiq.org/) *(opcional)*
- [Redis](https://redis.io/) *(opcional)*

## 🚀 Como rodar o projeto localmente

```bash
# Clone o repositório
git clone https://github.com/kdalves/my-personal-library.git
cd my-personal-library

# abra o VSCode
# Inicie o projeto dentro do dev container
```

## ✅ Funcionalidades implementadas

Descreva aqui as principais funcionalidades da sua aplicação. Por exemplo:

- Cadastro e login de usuários com autenticação
- CRUD de posts/artigos
- Background job para envio de e-mails
- Sistema de permissões com roles diferentes

## 🧠 Conceitos aplicados

Abaixo estão os conceitos aprendidos em aula e aplicados neste projeto, junto com a justificativa de sua utilização:

### 1. **Service Objects**

Utilizados para encapsular regras de negócio complexas fora dos models e controllers, mantendo o código mais limpo e testável. Podemos observar no projeto a classe TAL que faz isso e isso onde podemos comprovar o benefício da utilização desse conceito.

### 2. **ActiveJob + Sidekiq**

Usado para processamento assíncrono de tarefas demoradas, como envio de e-mails, sem bloquear o fluxo da aplicação. Aqui escolhi usar esse conceito pois se enviasse o email ficaria com a tela bloqueada para o usuário e isso acaba causando um empobrecimento na UX.

### 3. **Design Patterns como Form Objects ou Presenters**

Aplicados para organizar melhor o código em casos onde os formulários possuem lógica de validação ou exibição mais complexa. Escolhi usar o PATTERN para possibilitar desacoplar tal classe e assim ter o benefício disso disso e disso.

> _Em resumo, inclua pelo menos 5 conceitos que utilizou, a justificativa de cada um e como isso te ajudou no projeto._
----------------------------------------

