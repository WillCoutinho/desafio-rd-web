#language: pt

@login
Funcionalidade: Login
    Para acessar a aplicação OrangeHRM
    Como usuário
    Devo estar logado corretamente

@login_sucesso
Cenario: Login com sucesso
Dado que o usuario quer se logar
Quando ele digitar credenciais válidas
Entao deve acessar o dashboard da aplicação com sucesso
