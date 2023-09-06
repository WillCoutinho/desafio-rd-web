# frozen_string_literal: true

# PO do Login
class Login < SitePrism::Page
  set_url ''
  element :usernameField, 'input[name="username"]'
  element :passwordField, 'input[name="password"]'
  element :login_button, 'button[type="submit"]'
  @login_title = 'login'

  def user_login(username:, password:)
    usernameField.set(username)
    passwordField.set(password)
    login_button.click
  end

  def check_login_page
    assert_title(@login_title)
  end
end
