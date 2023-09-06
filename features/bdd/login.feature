#language: pt

@login
Funcionalidade: Login
    Para acessar a aplicação OrangeHRM
    Como usuário
    Devo estar logado corretamente

@login_sucesso @pos_condicao_deslogar
Cenario: Login com sucesso
Dado que o usuario quer se logar
Quando ele digitar credenciais válidas
Entao deve acessar o dashboard da aplicação com sucesso

@deslogar_sucesso @pre_condicao_logar
Cenario: Deslogar com sucesso
Dado que o usuario deseja deslogar
Quando ele acessar a opção de Logout
Entao deve retornar a página de login
