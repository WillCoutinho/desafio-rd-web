# frozen_string_literal: true

Before do
  Capybara.page.driver.browser.manage.window.maximize
end

Before('@pre_condicao_logar') do
  login.load
  login.user_valid_login
  dashboard.check_dashboard_page
end

After('@pos_condicao_deslogar') do
  login.logout
  login.check_login_page
end
