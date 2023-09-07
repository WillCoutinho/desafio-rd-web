# frozen_string_literal: true

Dado('que o admin quer cadastrar um novo usuário admin') do
  admin.access_admin_tab
end

Quando('ele acessar a opção de adicionar') do
  admin.click_add_button
end

Quando('preencher os dados do novo admin') do
  admin.create_new_user
end

Entao('um novo admin será cadastrado') do
  admin.assert_user_created
  admin.fill_username_and_search(CREDENTIAL[:new_user][:username])
  admin.check_search_result
end


Dado('que o admin quer buscar um usuário') do
  admin.access_admin_tab
end

Quando('ele buscar um nome existente') do
  admin.fill_username_and_search(CREDENTIAL[:new_user][:username])
  admin.check_search_result
end

Entao('o usuário será retornado') do
  admin.check_search_result
end


Dado('que o admin quer deletar um usuário') do
  admin.access_admin_tab
end

Quando('selecionar o usuário para exclusão') do
  admin.select_and_delete_user
  admin.assert_popup_message
  admin.confirm_delete
end

Entao('o usuário deverá ser excluído') do
  admin.check_delete
end
