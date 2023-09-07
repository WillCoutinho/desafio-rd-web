# frozen_string_literal: true

class Login < SitePrism::Page
  set_url ''
  element :usernameField, 'input[name="username"]'
  element :passwordField, 'input[name="password"]'
  element :login_button, 'button[type="submit"]'
  element :drop_down_menu, '.oxd-userdropdown-tab'

  def user_valid_login
    usernameField.set(CREDENTIAL[:valid_user][:username])
    passwordField.set(CREDENTIAL[:valid_user][:password])
    login_button.click
  end

  def check_login_page
    assert_title('OrangeHRM')
  end

  def logout
    find('.oxd-userdropdown-tab').click
    click_link(href: '/web/index.php/auth/logout')
  end
end
