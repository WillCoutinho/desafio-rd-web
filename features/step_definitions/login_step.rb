# frozen_string_literal: true

Dado('que o usuario quer se logar') do
  login.load
  login.check_login_page
end

Quando('ele digitar credenciais válidas') do
  login.user_valid_login
end

Entao('deve acessar o dashboard da aplicação com sucesso') do
  dashboard.check_dashboard_page
end


Dado('que o usuario deseja deslogar') do
  dashboard.check_dashboard_page
end

Quando('ele acessar a opção de Logout') do
  login.logout
end

Entao('deve retornar a página de login') do
  login.check_login_page
end
