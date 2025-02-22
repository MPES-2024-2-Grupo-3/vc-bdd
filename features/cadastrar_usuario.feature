# language: pt
Funcionalidade: Cadastrar Usuários
  Como pessoa envolvida nas ações de voluntariado
  Quero realizar meu cadastro
  Para obter acesso ao sistema

  # O sistema deverá solicitar que o usuário informe os seguintes dados para cadastro:
  # - Nome (obrigatório)
  # - Email (obrigatório)
  # - Senha (obrigatório)
  # - Cidade (obrigatório)
  # - CPF (obrigatório)
  # - Função (obrigatório)
  #
  # O sistema deverá disponibilizar um link para que o usuário acesse o termo de consentimento.
  # No campo “Função”, o sistema deverá exibir as seguintes opções para escolha:
  # - Voluntário
  # - Gestor
  #
  # O sistema deverá disponibilizar um botão de ação que terá o seguinte comportamento:
  # - Se “Função” = “voluntário”: o texto do botão deve ser “continuar”.
  # - Se “Função” = “Gestor”: o texto do botão deve ser “concluir”.

  Cenário: Cadastro de Gestor com sucesso
    Dado que sou Gestor
    E estou na página de cadastro
    Quando preencher o "Nome" com "Rhyan Ranzan"
    E preencher "Email" com "rhyanranzan@gmail.com"
    E preencher "Senha" com "jdk0a*32"
    E escolher a "Cidade" "Recife/PE"
    E informar o "CPF" "878.879.989-33"
    E escolher a "Função" "Gestor"
    E clicar na ação "Concluir"
    Então o sistema deverá realizar o meu cadastro com sucesso
    E exibir a mensagem "Seu cadastro como Gestor foi realizado com sucesso".

  Cenário: Cadastro de Gestor - sem sucesso
    Dado que sou Gestor
    E estou na página de cadastro
    Quando preencher o "Nome" com "Rhyan Ranzan"
    E preencher "Email" com "rhyanranzan@gmail.com"
    E preencher "Senha" com "jdk0a*32"
    E escolher a "Cidade" "Recife/PE"
    E informar o "CPF" ""
    E escolher a "Função" "Gestor"
    E clicar na ação "Concluir"
    Então o sistema deverá impedir que o cadastro seja realizado
    E exibir a mensagem "Necessário informar todos os dados obrigatórios".
