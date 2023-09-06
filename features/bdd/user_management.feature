#language: pt

@dashboard
Funcionalidade: Gerenciamento de Usuários
    Para adicionar, remover e buscar usuários da aplicação
    Como usuário Admin
    Devo usar a função de Gerenciamento de Usuários

@cadastro_usuario @pre_condicao_logar @wip
Cenario: Cadastrar Usuário
Dado que o admin quer cadastrar um novo usuário admin
Quando ele acessar a opção de adicionar
E preencher os dados do novo admin
Entao um novo admin será cadastrado


@buscar_usuario @pre_condicao_logar @wip
Cenario: Buscar Usuário Cadastrado
Dado que o admin quer buscar um usuário
Quando ele buscar um nome existente
Entao o usuário será retornado


@deletar_usuario @pre_condicao_logar @wip
Cenario: Deletar Usuário Cadastrado
Dado que o admin quer deletar um usuário
Quando ele buscar um nome existente
E selecionar o usuário para exclusão
Entao o usuário deverá ser excluído
