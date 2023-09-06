# frozen_string_literal: true

Dado('que o usuario quer se logar') do
  visit ''
  sleep(2)
end

Quando('ele digitar credenciais válidas') do
  @login = LoginPage.new
  @login.logar_usuario
end

Entao('deve acessar o dashboard da aplicação com sucesso') do
  assert_title('OrangeHRM')
end
