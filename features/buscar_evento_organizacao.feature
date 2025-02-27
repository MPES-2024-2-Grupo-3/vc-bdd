# language: pt

Funcionalidade: Buscar Eventos da Organização

  Como voluntário
  Quero preencher o formulário de consulta
  Para buscar um evento da organização

  Cenário: Buscar Eventos Disponíveis da Organização com Sucesso
    Dado que o usuário está com o perfil de “voluntário”
    E que o voluntário clicou no atalho “Conectar” no menu inferior
    E clicou no botão “Buscar Eventos da Organização”
    E que está na tela “Buscar Eventos da Organização”
    Quando deixar o campo “Nome do Evento” vazio
    E o campo “Localização” vazio
    E o campo “Causas” vazio
    E o campo “Eventos” com o valor “Disponíveis”
    E clicar no botão “Buscar”
    Então o sistema deverá realizar a consulta por eventos disponíveis da organização
    E exibir uma lista de eventos disponíveis da organização
    E para cada evento exibir:
      | Campo                               |
      | Data e Hora de início do evento     |
      | Data e Hora de fim do evento        |
      | Nome do Evento                      |
      | Descrição do Evento                 |
      | Causas do Evento                    |
      | Cidade do Evento                    |
      | Quantidade de Voluntários Conectados|
      | Botão Reservar                      |
      | Botão Detalhar                      |

  Cenário: Buscar Eventos Conectados da Organização com Sucesso
    Dado que o usuário está com o perfil de “voluntário”
    E que o voluntário clicou no atalho “Conectar” no menu inferior
    E clicou no botão “Buscar Eventos da Organização”
    E que está na tela “Buscar Eventos da Organização”
    Quando deixar o campo “Nome do Evento” vazio
    E o campo “Localização” vazio
    E o campo “Causas” vazio
    E o campo “Eventos” com o valor “Conectados”
    E clicar no botão “Buscar”
    Então o sistema deverá realizar a consulta por eventos conectados da organização
    E exibir uma lista de eventos conectados da organização
    E para cada evento exibir:
      | Campo                               |
      | Data e Hora de início do evento     |
      | Data e Hora de fim do evento        |
      | Nome do Evento                      |
      | Descrição do Evento                 |
      | Causas do Evento                    |
      | Cidade do Evento                    |
      | Quantidade de Voluntários Conectados|
      | Botão Cancelar                      |
      | Botão Chat                          |
      | Botão Detalhar                      |

  Cenário: Buscar Eventos Trabalhados da Organização com Sucesso
    Dado que o usuário está com o perfil de “voluntário”
    E que o voluntário clicou no atalho “Conectar” no menu inferior
    E clicou no botão “Buscar Eventos da Organização”
    E que está na tela “Buscar Eventos da Organização”
    Quando deixar o campo “Nome do Evento” vazio
    E o campo “Localização” vazio
    E o campo “Causas” vazio
    E o campo “Eventos” com o valor “Trabalhados”
    E clicar no botão “Buscar”
    Então o sistema deverá realizar a consulta por eventos trabalhados da organização
    E exibir uma lista de eventos trabalhados da organização
    E para cada evento exibir:
      | Campo                               |
      | Data e Hora de início do evento     |
      | Data e Hora de fim do evento        |
      | Nome do Evento                      |
      | Descrição do Evento                 |
      | Causas do Evento                    |
      | Cidade do Evento                    |
      | Quantidade de Volunt
