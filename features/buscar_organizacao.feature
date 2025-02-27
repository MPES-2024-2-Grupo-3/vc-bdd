# language: pt

Funcionalidade: Buscar Organização

  Como voluntário
  Quero preencher o formulário de consulta
  Para buscar uma organização

  Cenário: Buscar Organização sem Sucesso
    Dado que o usuário está com o perfil de “voluntário”
    E que o voluntário clicou no atalho “Conectar” no menu inferior
    E clicou no botão “Buscar Organização”
    E que está na tela “Buscar Organização”
    Quando deixar o campo “Nome” vazio
    E o campo “Localização” vazio
    E o campo “Causas” vazio
    E clicar no botão “Buscar”
    Então o sistema deverá impedir que a busca seja realizada
    E exibir a mensagem “Necessário informar algum critério de busca”.

  Cenário: Buscar Organização por Localização e Causas com Sucesso
    Dado que o usuário está com o perfil de “voluntário”
    E que o voluntário clicou no atalho “Conectar” no menu inferior
    E clicou no botão “Buscar Organização”
    E que está na tela “Buscar Organização”
    Quando deixar o campo “Nome” vazio
    E preencher o campo “Localização” com o valor “Recife”
    E preencher o campo “Causas” com o valor “Combate à Fome”
    E clicar no botão “Buscar”
    Então o sistema deverá realizar a consulta por organizações localizadas em “Recife” e que trabalhem com a causa “Combate à Fome”
    E exibir uma lista com as organizações que atendem os critérios da busca
    E para cada organização exibir:
      | Campo                               |
      | Imagem da Logo                      |
      | Nome da Organização                 |
      | Resumo da Organização               |
      | Causas                              |
      | Cidade                              |
      | Quantidade de Voluntários Conectados|
      | Avaliação                           |
      | Botão de conexão                    |
      | Botão de Detalhar                   |
