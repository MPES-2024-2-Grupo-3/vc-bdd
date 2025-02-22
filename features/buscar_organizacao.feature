# language: pt

Funcionalidade: Buscar Organização
  Como Voluntário
  Quero localizar uma organização
  Para ter ciência de sua presença e possibilidades de ação

  Cenário: Buscar por uma organização com sucesso
    Dado que sou Voluntário
    E estou na página de pesquisa
    Quando seleciono a opção "Buscar Organizações"
    E preencho o campo "Nome" com "Casa Vincular"
    E clico no botão "Pesquisar"
    Então o sistema exibe a organização "Casa Vincular"

  Cenário: Buscar por uma organização sem sucesso
    Dado que sou Voluntário
    E estou na página de pesquisa
    Quando seleciono a opção "Buscar Organizações"
    E preencho o campo "Nome" com "Casa Desvincular"
    E clico no botão "Pesquisar"
    Então o sistema não exibe a organização "Casa Desvincular"

  Cenário: Buscar por uma organização com busca parcial
    Dado que sou Voluntário
    E estou na página de pesquisa
    Quando seleciono a opção "Buscar Organizações"
    E preencho o campo "Nome" com "Vincular"
    E clico no botão "Pesquisar"
    Então o sistema exibe a organização "Casa Vincular"

  Cenário: Buscar por uma organização com busca case insensitive
    Dado que sou Voluntário
    E estou na página de pesquisa
    Quando seleciono a opção "Buscar Organizações"
    E preencho o campo "Nome" com "casa vincular"
    E clico no botão "Pesquisar"
    Então o sistema exibe a organização "Casa Vincular"

  Cenário: Buscar por uma organização sem sucesso com campo vazio
    Dado que sou Voluntário
    E estou na página de pesquisa
    Quando seleciono a opção "Buscar Organizações"
    E deixo o campo "Nome" vazio ""
    E clico no botão "Pesquisar"
    Então o sistema exibe a mensagem "Informe o nome da organização"
    E não exibe resultados na lista

  Cenário: Buscar por uma organização sem sucesso devido a erro de conexão
    Dado que sou Voluntário
    E estou na página de pesquisa
    Quando seleciono a opção "Buscar Organizações"
    E preencho o campo "Nome" com "Casa Vincular"
    E clico no botão "Pesquisar"
    E ocorre um erro de conexão com o servidor
    Então o sistema exibe a mensagem "Erro ao buscar organizações. Tente novamente mais tarde"

  Cenário: Buscar por uma organização sem sucesso com caracteres especiais inválidos
    Dado que sou Voluntário
    E estou na página de pesquisa
    Quando seleciono a opção "Buscar Organizações"
    E preencho o campo "Nome" com "#$@!"
    E clico no botão "Pesquisar"
    Então o sistema exibe a mensagem "Nenhuma organização encontrada"
    E não exibe nenhuma organização na lista de resultados

  Cenário: Buscar por uma organização com múltiplos resultados
    Dado que sou Voluntário
    E estou na página de pesquisa
    Quando seleciono a opção "Buscar Organizações"
    E preencho o campo "Nome" com "Casa"
    E clico no botão "Pesquisar"
    Então o sistema exibe uma lista de organizações correspondentes
    E a organização "Casa Vincular" está presente na lista
