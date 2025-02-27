# language: pt

Funcionalidade: Cadastrar Organização

  Como gestor
  Quero preencher o formulário de cadastro de organização
  Para cadastrar minha organização

  Cenário: Cadastrar Organização sem sucesso
    Dado que o gestor está na página “Cadastro de Organização”
    Quando deixar o campo “Classificação” vazio
    E o campo “Nome da Organização” vazio
    E o campo “Resumo da Organização” vazio
    E o campo “Causas” vazio
    E o campo “Endereço” vazio
    E o campo “Telefone” vazio
    E o campo “Sobre sua Organização” vazio
    E clicar no botão “Salvar”
    Então o sistema deverá impedir que o cadastro seja realizado
    E exibir a mensagem “Necessário informar todos os dados obrigatórios”.

  Cenário: Cadastrar Organização com sucesso
    Dado que o gestor está na página “Cadastro de Organização”
    Quando preencher o campo “Classificação” com “Projeto Social”
    E preencher o campo “Nome da Organização” com “Casa Vincular”
    E preencher o campo “Resumo da Organização” com “Estamos aqui para ajudar”
    E preencher o campo “Causas” com “Combate à Fome”
    E preencher o campo “Endereço” com “Rua Sebastião Pino, 222. Recife”
    E preencher o campo “Telefone” com “81986118615”
    E preencher o campo “Sobre sua Organização” com “Objetivos e Histórico”
    E clicar no botão “Salvar”
    Então o sistema deverá realizar o cadastro da organização com sucesso
    E exibir a mensagem “Sua Organização foi cadastrada com sucesso”.
