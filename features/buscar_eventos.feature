# language: pt

Funcionalidade: Buscar Eventos

  Como voluntário
  Quero preencher o formulário de consulta
  Para buscar um evento

  Cenário: Buscar Evento sem Sucesso
    Dado que o usuário está com o perfil de “voluntário”
    E que o voluntário clicou no atalho “Conectar” no menu inferior
    E clicou no botão “Buscar Eventos”
    E que está na tela “Buscar Eventos”
    Quando deixar o campo “Nome da Organização” vazio
    E deixar o campo “Nome do Evento” vazio
    E o campo “Localização” vazio
    E o campo “Causas” vazio
    E clicar no botão “Buscar”
    Então o sistema deverá impedir que a busca seja realizada
    E exibir a mensagem “Necessário informar algum critério de busca”.

  Cenário: Buscar Evento por Localização e Causas com Sucesso
    Dado que o usuário está com o perfil de “voluntário”
    E que o voluntário clicou no atalho “Conectar” no menu inferior
    E clicou no botão “Buscar Eventos”
    E que está na tela “Buscar Eventos”
    Quando deixar o campo “Nome da Organização” vazio
    E deixar o campo “Nome do Evento” vazio
    E preencher o campo “Localização” com o valor “Recife”
    E preencher o campo “Causas” com o valor “Combate à Fome”
    E clicar no botão “Buscar”
    Então o sistema deverá realizar a consulta por eventos localizados em “Recife” e que trabalhem com a causa “Combate à Fome”
    E exibir uma lista de eventos que atendem os critérios da busca
    E para cada evento exibir:
      | Campo                               |
      | Imagem da Logo da organização       |
      | Nome da Organização                 |
      | Botão de conexão                    |
      | Data e Hora de início do evento     |
      | Data e Hora de fim do evento        |
      | Nome do Evento                      |
      | Descrição do Evento                 |
      | Causas do Evento                    |
      | Cidade do Evento                    |
      | Quantidade de Voluntários Conectados|
      | Avaliação da Organização            |
      | Botão de Detalhar Evento            |

  Cenário: Buscar Evento por Nome da Organização com Sucesso
    Dado que o usuário está com o perfil de “voluntário”
    E que o voluntário já esteja conectado à organização “Casa Vincular”
    E que o voluntário clicou no atalho “Conectar” no menu inferior
    E clicou no botão “Buscar Eventos”
    E que está na tela “Buscar Eventos”
    Quando preencher o campo “Nome da Organização” com o valor “Casa Vincular”
    E deixar o campo “Nome do Evento” vazio
    E o campo “Localização” vazio
    E o campo “Causas” vazio
    E clicar no botão “Buscar”
    Então o sistema deverá realizar a consulta por eventos cujo o “Nome da Organização” seja “Casa Vincular”
    E exibir uma lista de eventos que atendem os critérios da busca
    E o “Botão de conexão” deverá estar com o texto “Conectado”.
