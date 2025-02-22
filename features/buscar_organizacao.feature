# language: pt

Funcionalidade: Buscar Organização
  Como Voluntário
  Quero localizar uma organização
  Para ter ciencia de sua presença e possibilidades de ação

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