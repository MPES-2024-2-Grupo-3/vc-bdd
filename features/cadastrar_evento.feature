# language: pt

Funcionalidade: Cadastrar Evento

  Como gestor
  Quero preencher o formulário de cadastro de evento
  Para cadastrar um evento da minha organização

  Cenário: Cadastrar Evento sem sucesso
    Dado que o gestor está na página “Cadastro de Evento”
    E que a organização selecionada é “Casa Vincular”
    Quando deixar o campo “Nome do Evento” vazio
    E o campo “Descrição do Evento” vazio
    E o campo “Endereço do Evento” vazio
    E o campo “Data e Horário de Início” vazio
    E o campo “Data e Horário de Fim” vazio
    E o campo “Causas” vazio
    E o campo “Funções” vazio
    E clicar no botão “Salvar”
    Então o sistema deverá impedir que o cadastro seja realizado
    E exibir a mensagem “Necessário informar todos os dados obrigatórios”.

  Cenário: Cadastrar Evento com sucesso
    Dado que o gestor está na página “Cadastro de Evento”
    E que a organização selecionada é “Casa Vincular”
    Quando preencher o campo “Nome do Evento” com “Segunda Cultural”
    E o campo “Descrição do Evento” com “Evento das Segundas”
    E o campo “Endereço do Evento” com “Rua Malaquias, 222. Parnamirim. Recife”
    E o campo “Data e Horário de Início” com “17/03/2025 – 08h”
    E o campo “Data e Horário de Fim” com “17/03/2025 – 18h”
    E o campo “Causas” com o valor “Combate à Fome”
    E o campo “Funções” com o valor “Refeição/10/Banho/10”
    E clicar no botão “Salvar”
    Então o sistema deverá realizar o cadastro do evento com sucesso
    E exibir a mensagem “Seu Evento foi cadastrado com sucesso”.

  Cenário: Evento cadastrado com sucesso, porém com uma única função
    Dado que o gestor está na página “Cadastro de Evento”
    E que a organização selecionada é “Casa Vincular”
    Quando preencher o campo “Nome do Evento” com “Segunda Cultural”
    E o campo “Descrição do Evento” com “Evento das Segundas”
    E o campo “Endereço do Evento” com “Rua Malaquias, 222. Parnamirim. Recife”
    E o campo “Data e Horário de Início” com “17/03/2025 – 08h”
    E o campo “Data e Horário de Fim” com “17/03/2025 – 18h”
    E o campo “Causas” com o valor “Combate à Fome”
    E o campo “Funções” com o valor “Refeição/10/“”/10”
    E clicar no botão “Salvar”
    Então o sistema deverá realizar o cadastro do evento com sucesso
    E exibir a mensagem “Seu Evento foi cadastrado com sucesso”
    E o evento terá como “Funções” apenas o registro “Refeição/10”.
