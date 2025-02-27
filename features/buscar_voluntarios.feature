# language: pt

Funcionalidade: Buscar Voluntários

  Como Gestor associado à Organização
  Quero preencher o formulário de consulta
  Para buscar um Voluntário

  Cenário: Buscar Voluntário sem Sucesso
    Dado que o usuário está com o perfil de “Gestor”
    E que o Gestor clicou no atalho “Conectar” no menu inferior
    E clicou no botão “Buscar Voluntários”
    E preencheu os parâmetros da busca e clicou em “Buscar”
    E que está na tela “Listar Voluntários”
    Quando deixar o campo “Nome” vazio
    E o campo “Cidade” vazio
    E o campo “Causas” vazio
    E o campo “Habilidades” vazio
    E o campo “Gênero” vazio
    E o campo “Conectado” vazio
    E clicar no botão “Buscar”
    Então o sistema deverá impedir que a busca seja realizada
    E exibir a mensagem “Necessário informar algum critério de busca”.

  Cenário: Buscar Voluntário por Localização e Causas com Sucesso
    Dado que o usuário está com o perfil de “Gestor”
    E que o Gestor clicou no atalho “Conectar” no menu inferior
    E clicou no botão “Buscar Voluntários”
    E que está na tela “Buscar Voluntários”
    Quando deixar o campo “Nome” vazio
    E preencher o campo “Cidade” com o valor “Recife”
    E preencher o campo “Causas” com o valor “Combate à Fome”
    E o campo “Habilidades” vazio
    E o campo “Gênero” vazio
    E o campo “Conectado” vazio
    E clicar no botão “Buscar”
    Então o sistema deverá realizar a consulta por voluntários localizados em “Recife” e que tenham interesse na causa “Combate à Fome”
    E exibir uma lista de voluntários que atendem os critérios da busca
    E para cada voluntário exibir:
      | Campo       |
      | Foto        |
      | Nome        |
      | Descrição   |
      | Causas      |
      | Habilidades |
      | Idade       |
      | Gênero      |
      | Cidade      |
      | Botão de Conexão |
      | Botão Detalhar |

  Cenário: Buscar Voluntário conectado à Organização “Casa Vincular” com Sucesso
    Dado que o usuário está com o perfil de “Gestor”
    E que o voluntário já esteja conectado à organização “Casa Vincular”
    E que o gestor clicou no atalho “Conectar” no menu inferior
    E clicou no botão “Buscar Voluntários”
    E que está na tela “Buscar Voluntários”
    Quando deixar o campo “Nome” vazio
    E preencher o campo “Cidade” com o valor “Recife”
    E preencher o campo “Causas” com o valor “Combate à Fome”
    E o campo “Habilidades” vazio
    E o campo “Gênero” vazio
    E o campo “Conectado” vazio
    E clicar no botão “Buscar”
    Então o sistema deverá realizar a consulta por voluntários localizados em “Recife” e que tenham interesse na causa “Combate à Fome”
    E exibir uma lista de voluntários que atendem os critérios da busca
    E para cada voluntário exibir:
      | Campo       |
      | Foto        |
      | Nome        |
      | Descrição   |
      | Causas      |
      | Habilidades |
      | Idade       |
      | Gênero      |
      | Cidade      |
      | Botão de Conexão |
      | Botão Detalhar |
    E para os voluntários conectados à “Organização” “Casa Vincular”, o “Botão de conexão” deverá estar com o texto “Conectado”.
