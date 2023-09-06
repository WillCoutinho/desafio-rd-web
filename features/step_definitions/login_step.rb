# frozen_string_literal: true

Dado('que o usuario quer se logar') do
  login.load
  login.check_login_page
end

Quando('ele digitar credenciais válidas') do
  login.user_login(username: CREDENTIAL[:valid_user][:username],
                  password: CREDENTIAL[:valid_user][:password])
end

Entao('deve acessar o dashboard da aplicação com sucesso') do
  dashboard.check_dashboard_page
end
