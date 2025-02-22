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

  Cenário: Falha ao solicitar conexão com a organização
    Dado que estou na página de pesquisa
    E o sistema exibe a organização "Casa Vincular"
    E o botão "Pendente" for encontrado
    Quando tento clicar no botão "Pendente"
    Então o sistema exibe a mensagem "Ainda aguardando aprovação da organização"
