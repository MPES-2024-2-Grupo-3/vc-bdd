# language: pt

Funcionalidade: Cadastrar Usuários
  Como pessoa envolvida nas ações de voluntariado
  Quero realizar meu cadastro
  Para obter acesso ao sistema

  Cenário: Cadastro sem sucesso
    Dado que estou na página de "Cadastro"
    Quando eu deixar o campo "Nome" vazio ""
    E deixar o campo "Email" vazio ""
    E deixar o campo "Senha" vazio ""
    E deixar o campo "Cidade" vazio ""
    E deixar o campo "CPF" vazio ""
    E deixar o campo "Função" vazio ""
    Então o sistema deverá impedir que o cadastro seja realizado
    E exibir a mensagem "Necessário informar todos os dados obrigatórios"

  Cenário: Cadastro de Gestor com sucesso
    Dado que sou Gestor na página de "Cadastro"
    Quando preencher o "Nome" com "Rhyan Ranzan"
    E preencher "Email" com "rhyanranzan@gmail.com"
    E preencher "Senha" com "jdk0a*32"
    E escolher a "Cidade" "Recife/PE"
    E informar o "CPF" "878.879.989-33"
    E escolher a "Função" "Gestor"
    E clicar na ação "Concluir"
    Então o sistema deverá realizar o meu cadastro com sucesso
    E exibir a mensagem "Seu cadastro como Gestor foi realizado com sucesso"

  Cenário: Cadastro de Voluntário com sucesso
    Dado que sou voluntário na página de "Cadastro"
    Quando preencher o "Nome" com "Maria Jayara"
    E preencher "Email" com "jayara@gmail.com"
    E preencher "Senha" com "********"
    E escolher a "Cidade" "Juazeiro/CE"
    E informar o "CPF" "878.879.989-33"
    E escolher a "Função" "Voluntário"
    E clicar na ação "Continuar"
    Então o sistema deverá direcionar para a página "Dados do Voluntário"
