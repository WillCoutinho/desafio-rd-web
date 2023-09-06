#language: pt

@login
Funcionalidade: Login
    Para acessar a aplicação Orange
    O usuário
    Quer logar

@login_sucesso
Cenario: Login com sucesso
Dado que o usuario quer se logar
Quando ele digitar credenciais válidas
Entao deve acessar o dashboard da aplicação com sucesso
