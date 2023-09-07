# frozen_string_literal: true

Before do
  Capybara.page.driver.browser.manage.window.maximize
end

Before('@pre_condicao_logar') do
  login.load
  login.user_valid_login
  dashboard.check_dashboard_page
end

Before('@pre_condicao_cadastrar_usuario') do
  login.load
  login.user_valid_login
  dashboard.check_dashboard_page
  admin.access_admin_tab
  admin.click_add_button
  admin.create_new_user
  admin.assert_user_created
end


After('@pos_condicao_remover_usuario') do
  admin.access_admin_tab
  admin.fill_username_and_search(CREDENTIAL[:new_user][:username])
  admin.check_search_result
  admin.select_and_delete_user
  admin.assert_popup_message
  admin.confirm_delete
end


After('@pos_condicao_deslogar') do
  login.logout
  login.check_login_page
end
