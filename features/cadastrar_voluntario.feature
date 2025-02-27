# language: pt

Funcionalidade: Cadastrar Voluntário

  Como voluntário
  Quero preencher os dados de voluntário
  Para obter acesso ao sistema como voluntário

  Cenário: Completar dados de voluntário sem sucesso
    Dado que o usuário está na página “Cadastro de Voluntário”
    Quando deixar o campo “Foto” vazio
    E o campo “Nome Completo” vazio
    E o campo “Telefone” vazio
    E o campo “CPF” vazio
    E o campo “Data de Nascimento” vazio
    E o campo “Gênero” vazio
    E o campo “Cidade” vazio
    E clicar no botão “Salvar”
    Então o sistema deverá impedir que o cadastro seja realizado
    E exibir a mensagem “Necessário informar todos os dados obrigatórios”.

  Cenário: Completar dados de voluntário com sucesso
    Dado que o usuário está na página “Cadastro de Voluntário”
    Quando preencher o campo “Foto” com a imagem “link da imagem”
    E preencher o campo “Nome Completo” com “Rhyan Britto”
    E preencher o campo “Telefone” com “81986118631”
    E preencher o campo “CPF” com “878.879.989-33”
    E preencher o campo “Data de Nascimento” com “30/12/1990”
    E selecionar o “Gênero” como “Masculino”
    E selecionar a “Cidade” como “Recife”
    E clicar no botão “Salvar”
    Então o sistema deverá realizar o cadastro do voluntário com sucesso
    E exibir a mensagem “Seu cadastro como voluntário foi realizado com sucesso”.
