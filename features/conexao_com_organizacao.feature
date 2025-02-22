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

  Cenário: Erro ao solicitar conexão devido a falha do sistema
    Dado que sou Voluntário
    E o sistema exibe a organização "Casa Vincular"
    Quando clico no botão "Conectar"
    E ocorre um erro no sistema
    Então o sistema exibe a mensagem "Erro ao processar a solicitação. Tente novamente mais tarde."
    E o botão "Conectar" permanece disponível
