# language: pt

Funcionalidade: Cadastrar Usuários

  Como pessoa envolvida nas ações de voluntariado
  Quero realizar meu cadastro
  Para obter acesso ao sistema

  Cenário: Cadastro sem sucesso
    Dado que o usuário está na página “Cadastro”
    Quando deixar o campo “Nome” vazio
    E o campo “Email” vazio
    E o campo “Senha” vazio
    E o campo “Cidade” vazio
    E o campo “CPF” vazio
    E o campo “Função” vazio
    E clicar no botão “Cadastrar”
    Então o sistema deverá impedir que o cadastro seja realizado
    E exibir a mensagem “Necessário informar todos os dados obrigatórios”.

  Cenário: Cadastro de Gestor com sucesso
    Dado que o usuário está na página de “Cadastro”
    Quando preencher o campo “Nome” com “Rhyan Ranzan”
    E preencher o campo “Email” com “rhyanranzan@gmail.com”
    E preencher o campo “Senha” com “jdk0a*32”
    E selecionar a “Cidade” como “Recife”
    E preencher o campo “CPF” com “878.879.989-33”
    E selecionar a “Função” como “Gestor”
    E clicar no botão de ação “Concluir”
    Então o sistema deverá realizar o cadastro com sucesso
    E exibir a mensagem “Seu cadastro como Gestor foi realizado com sucesso”.

  Cenário: Cadastro de Voluntário com sucesso
    Dado que o usuário está na página de “Cadastro”
    Quando preencher o campo “Nome” com “Maria Jayara”
    E preencher o campo “Email” com “jayara@gmail.com”
    E preencher o campo “Senha” com “********”
    E selecionar a “Cidade” como “Juazeiro/CE”
    E preencher o campo “CPF” com “878.879.989-33”
    E selecionar a “Função” como “Voluntário”
    E clicar no botão de ação “Continuar”
    Então o sistem
