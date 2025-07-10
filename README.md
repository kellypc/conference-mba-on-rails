# README

----------------------------------------
Aluno: Kelly Pereira da Cruz
Email: kellycruz.ti@gmail.com

# Conferência MBA ON RAILS

Este é um projeto desenvolvido como parte do curso de Arquitetura de Aplicações web com Rails. O objetivo é aplicar os conceitos aprendidos em aula para criar uma aplicação web funcional, bem estruturada e com boas práticas de desenvolvimento.

## 📦 Tecnologias Utilizadas

- [Ruby](https://www.ruby-lang.org/pt/) 3.3.5
- [Ruby on Rails](https://rubyonrails.org/) 8.0.2
- [PostgreSQL](https://www.postgresql.org/)

## 🚀 Como rodar o projeto localmente

```bash
# Clone o repositório
git clone git@github.com:kellypc/conference-mba-on-rails.git
cd conference

# abra o VSCode
# Inicie o projeto dentro do dev container
```

## ✅ Funcionalidades implementadas

Descreva aqui as principais funcionalidades da sua aplicação. Por exemplo:

- CRUD de participantes/Palestras/palestrantes

## 🧠 Conceitos aplicados

Abaixo estão os conceitos aprendidos em aula e aplicados neste projeto, junto com a justificativa de sua utilização:

### 1. **Service Objects**

Utilizados para encapsular regras de negócio complexas fora dos models e controllers, mantendo o código mais limpo e testável. Podemos observar no projeto a classe Participant::Create que cria um Participant e capitura o erro e joga no logger.

### 2. **ActiveRecord:
Nos Modelos foram realizadas as Associações do Active Record para fazer o relacionamento das entidades.
No Model Participant utilizei o has_many para a associação com registrations e talks.
No Model registration utilizei o belongs_to para a associação com participant e talk.
No Model Speaker utilizei o has_many para a associação com talks.
No Model Talk utilizei o belongs_to para a associação com speaker e has_many para o relacionamento com registrations e participants.

Criei um Callback para no model Participant para salvar o email em caixa baixa.

### 3. **Design Patterns**

Escolhi usar o Interactor para jogar a lógica de criar
o participante para dentro do serviço o Interactor nos fornece um contexto onde fica mais simples manipular a entidade.
----------------------------------------

