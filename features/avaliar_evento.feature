# language: pt

Funcionalidade: Avaliar Evento
  Como voluntário
  Quero clicar no “botão avaliar”
  Para avaliar o evento

  Cenário: Avaliar Evento com Sucesso
    Dado que o usuário está com o perfil de “voluntário”
    E que o voluntário clicou no atalho “Conectar” no menu inferior
    E clicou no botão “Buscar Eventos da Organização”
    E que o voluntário realizou uma busca por eventos trabalhados
    E que o voluntário clicou no “Botão Avaliar”
    
    Quando o voluntário escolher 5 estrelas para a organização
    E escolher 4 estrelas para o evento
    
    Então o sistema deverá excluir o “Botão Avaliar”
    E exibir a nota de avaliação do evento.
