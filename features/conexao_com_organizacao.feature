# language: pt

Funcionalidade: Conexão com Organização
  Como Voluntário
  Quero me conectar a uma organização
  Para participar de ações de voluntariado desta organização

  Cenário: Solicitar conexão com organização com sucesso
    Dado busquei pela organização "Casa Vincular"
    E o sistema exibe a organização "Casa Vincular"
    Quando clico no botão "Conectar"
    Então o botão "Conectar" é alterado para "Pendente"

  Cenário: Falha ao solicitar conexão com a organização quando a solicitação já está pendente
    Dado que estou na página de pesquisa
    E o sistema exibe a organização "Casa Vincular"
    E o botão "Pendente" está visível (solicitação já realizada)
    Quando tento clicar no botão "Pendente"
    Então o sistema exibe a mensagem "Ainda aguardando aprovação da organização"

  Cenário: Buscar por uma organização sem sucesso
    Dado que sou Voluntário
    E estou na página de pesquisa
    Quando seleciono a opção "Buscar Organizações"
    E preencho o campo "Nome" com "Organização Inexistente"
    E clico no botão "Pesquisar"
    Então o sistema exibe a mensagem "Nenhuma organização encontrada"
    E não exibe nenhuma organização na lista de resultados

  Cenário: Tentativa de reconexão a uma organização já conectada
    Dado que sou Voluntário
    E já estou conectado à organização "Casa Vincular"
    Quando visualizo a organização "Casa Vincular" na página de pesquisa
    Então o sistema exibe o status "Conectado" em vez do botão "Conectar"

  Cenário: Solicitar conexão com organização com inscrições encerradas
    Dado que sou Voluntário
    E o sistema exibe a organização "Casa Vincular" com inscrições encerradas
    Quando tento clicar no botão "Conectar"
    Então o botão "Conectar" permanece desabilitado
    E o sistema exibe a mensagem "Inscrições para conexão estão encerradas"

  Cenário: Erro ao solicitar conexão devido a falha do sistema
    Dado que sou Voluntário
    E o sistema exibe a organização "Casa Vincular"
    Quando clico no botão "Conectar"
    E ocorre um erro no sistema
    Então o sistema exibe a mensagem "Erro ao processar a solicitação. Tente novamente mais tarde."
    E o botão "Conectar" permanece disponível
