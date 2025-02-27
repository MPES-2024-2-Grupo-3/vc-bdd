# language: pt

Funcionalidade: Detalhar Evento

  Como voluntário
  Quero clicar no botão detalhar de um evento presente no resultado de uma busca de eventos
  Para exibir os detalhes do evento selecionado

  Cenário: Detalhar Evento
    Dado que o usuário está com o perfil de “voluntário”
    E que o voluntário clicou no atalho “Conectar” no menu inferior
    E clicou no botão “Buscar Eventos”
    E preencheu os parâmetros da busca
    E que está na tela “Eventos (Conectar)”
    Quando clicar no botão “Detalhar” de um evento
    Então o sistema deverá exibir a tela de detalhes do evento com os seguintes dados:
      | Campo                               |
      | Logo da Organização                 |
      | Nome da Organização                 |
      | Botão de conexão                    |
      | Capa do Evento                      |
      | Nome do Evento                      |
      | Data e Hora de início do evento     |
      | Data e Hora de fim do evento        |
      | Endereço                            |
      | Descrição do Evento                 |
      | Funções                             |
      | Causas do Evento                    |

  Cenário: Detalhar Evento da organização “Casa Vincular”
    Dado que o usuário está com o perfil de “voluntário”
    E que o voluntário clicou no atalho “Conectar” no menu inferior
    E clicou no botão “Buscar Eventos”
    E preencheu os parâmetros da busca
    E que está na tela “Eventos (Conectar)”
    Quando clicar no botão “Detalhar” de um evento da organização “Casa Vincular”
    Então o sistema deverá exibir a tela de detalhes do evento com os seguintes dados:
      | Campo                               |
      | Logo da Organização                 |
      | Nome da Organização                 |
      | Botão de conexão                    |
      | Capa do Evento                      |
      | Nome do Evento                      |
      | Data e Hora de início do evento     |
      | Data e Hora de fim do evento        |
      | Endereço                            |
      | Descrição do Evento                 |
      | Funções                             |
      | Causas do Evento                    |
    E o “Botão de conexão” deverá estar com o texto “Conectado”.
