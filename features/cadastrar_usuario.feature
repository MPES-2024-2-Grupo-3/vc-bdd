# language: pt

Funcionalidade: Cadastrar Usuários
  Como pessoa envolvida nas ações de voluntariado
  Quero realizar meu cadastro
  Para obter acesso ao sistema

  Cenário: Cadastro sem sucesso - todos os campos vazios
    Dado que estou na página de "Cadastro"
    Quando eu deixar o campo "Nome" vazio ""
    E deixar o campo "Email" vazio ""
    E deixar o campo "Senha" vazio ""
    E deixar o campo "Cidade" vazio ""
    E deixar o campo "CPF" vazio ""
    E deixar o campo "Função" vazio ""
    Então o sistema deverá impedir que o cadastro seja realizado
    E exibir a mensagem "Necessário informar todos os dados obrigatórios"

  Cenário: Cadastro sem sucesso - Nome não informado
    Dado que estou na página de "Cadastro"
    Quando deixar o campo "Nome" vazio ""
    E preencher "Email" com "exemplo@exemplo.com"
    E preencher "Senha" com "senha123"
    E escolher a "Cidade" "São Paulo/SP"
    E informar o "CPF" "123.456.789-00"
    E escolher a "Função" "Voluntário"
    E clicar na ação "Continuar"
    Então o sistema deverá impedir que o cadastro seja realizado
    E exibir a mensagem "O campo Nome é obrigatório"

  Cenário: Cadastro sem sucesso - Email inválido
    Dado que estou na página de "Cadastro"
    Quando preencher o "Nome" com "João Silva"
    E preencher "Email" com "joaosilva"
    E preencher "Senha" com "senha123"
    E escolher a "Cidade" "Belo Horizonte/MG"
    E informar o "CPF" "123.456.789-00"
    E escolher a "Função" "Gestor"
    E clicar na ação "Concluir"
    Então o sistema deverá impedir que o cadastro seja realizado
    E exibir a mensagem "Email inválido"

  Cenário: Cadastro sem sucesso - CPF inválido
    Dado que estou na página de "Cadastro"
    Quando preencher o "Nome" com "Ana Paula"
    E preencher "Email" com "ana.paula@example.com"
    E preencher "Senha" com "senha123"
    E escolher a "Cidade" "Curitiba/PR"
    E informar o "CPF" com valor "12345678900"
    E escolher a "Função" "Voluntário"
    E clicar na ação "Continuar"
    Então o sistema deverá impedir que o cadastro seja realizado
    E exibir a mensagem "CPF inválido"

  Cenário: Cadastro sem sucesso - Senha fraca
    Dado que estou na página de "Cadastro"
    Quando preencher o "Nome" com "Carlos Oliveira"
    E preencher "Email" com "carlos@example.com"
    E preencher "Senha" com "123"
    E escolher a "Cidade" "Porto Alegre/RS"
    E informar o "CPF" "987.654.321-00"
    E escolher a "Função" "Gestor"
    E clicar na ação "Concluir"
    Então o sistema deverá impedir que o cadastro seja realizado
    E exibir a mensagem "Senha deve conter no mínimo 6 caracteres"

  Cenário: Cadastro sem sucesso - Email já cadastrado
    Dado que o email "rhyanranzan@gmail.com" já está cadastrado
    E estou na página de "Cadastro"
    Quando preencher o "Nome" com "Rhyan Ranzan"
    E preencher "Email" com "rhyanranzan@gmail.com"
    E preencher "Senha" com "jdk0a*32"
    E escolher a "Cidade" "Recife/PE"
    E informar o "CPF" "878.879.989-33"
    E escolher a "Função" "Gestor"
    E clicar na ação "Concluir"
    Então o sistema deverá impedir que o cadastro seja realizado
    E exibir a mensagem "Email já cadastrado"

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

  Cenário: Visualizar termo de consentimento
    Dado que estou na página de "Cadastro"
    Quando visualizo o link "Termo de Consentimento"
    Então o link deve direcionar para a página "Termo de Consentimento"

  Cenário: Erro ao realizar cadastro devido a falha no sistema
    Dado que estou na página de "Cadastro"
    Quando preencher o "Nome" com "Mariana"
    E preencher "Email" com "mariana@example.com"
    E preencher "Senha" com "senhaSegura!"
    E escolher a "Cidade" "Fortaleza/CE"
    E informar o "CPF" "111.222.333-44"
    E escolher a "Função" "Gestor"
    E clicar na ação "Concluir"
    E ocorre um erro de conexão com o servidor
    Então o sistema exibe a mensagem "Erro ao realizar o cadastro. Tente novamente mais tarde"

