# language: pt

Funcionalidade: Detalhar Organização

  Como voluntário
  Quero clicar no botão detalhar de uma organização presente no resultado de uma busca por localização
  Para exibir os detalhes da organização selecionada

  Cenário: Detalhar Organização com Sucesso
    Dado que o usuário está com o perfil de “voluntário”
    E que o voluntário clicou no atalho “Conectar” no menu inferior
    E clicou no botão “Buscar Organização”
    E preencheu os parâmetros da busca
    E que está na tela “Lista de Organizações”
    Quando clicar no botão “Detalhar” de uma organização
    Então o sistema deverá exibir a tela de detalhes da organização com os seguintes dados:
      | Campo                               |
      | Imagem da Logo                      |
      | Nome da Organização                 |
      | Resumo da Organização               |
      | Imagem de Capa                      |
      | Sobre sua Organização               |
      | Causas                              |
      | Endereço                            |
      | Telefone                            |
      | Email de contato da Organização     |
      | Website URL                         |
      | Instagram                           |

  Cenário: Detalhar Organização com o nome “Casa Vincular”
    Dado que o usuário está com o perfil de “voluntário”
    E que o voluntário clicou no atalho “Conectar” no menu inferior
    E clicou no botão “Buscar Organização”
    E preencheu os parâmetros da busca
    E que está na tela “Lista de Organizações”
    Quando clicar no botão “Detalhar” na organização com nome “Casa Vincular”
    Então o sistema deverá exibir a tela de detalhes da organização com os seguintes dados:
      | Campo                               |
      | Imagem da Logo                      |
      | Nome da Organização                 |
      | Resumo da Organização               |
      | Imagem de Capa                      |
      | Sobre sua Organização               |
      | Causas                              |
      | Endereço                            |
      | Telefone                            |
      | Email de contato da Organização     |
      | Website URL                         |
      | Instagram                           |
    E o “Botão de conexão” deverá estar com o texto “Conectado”.
