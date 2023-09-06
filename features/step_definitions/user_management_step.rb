# frozen_string_literal: true

Dado('que o admin quer cadastrar um novo usuário admin') do
  admin.access_admin_tab
end

Quando('ele acessar a opção de adicionar') do
  admin.click_add_button
end

Quando('preencher os dados do novo admin') do
  admin.select_role
  sleep(5)
end

Entao('um novo admin será cadastrado') do
  # Write code here that turns the phrase above into concrete actions
end


Dado('que o admin quer buscar um usuário') do
  admin.access_admin_tab
end

Quando('ele buscar um nome existente') do
  admin.fill_username_and_search
end

Entao('o usuário será retornado') do
  admin.check_search_result
end


Dado('que o admin quer deletar um usuário') do
  admin.access_admin_tab
end

Quando('selecionar o usuário para exclusão') do
  admin.fill_username_and_search
end


Entao('o usuário deverá ser excluído') do
  admin.check_search_result
end
