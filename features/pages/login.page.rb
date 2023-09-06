# frozen_string_literal: true

# PO do Login
class LoginPage < SitePrism::Page
  element :email, 'input[name="username"]'
  element :password, 'input[name="password"]'
  element :btn_login, 'button[type="submit"]'
  element :titulo_login, '.h5'
  @titulo_login = 'Login'

  def logar_usuario
    email.set 'Admin'
    password.set 'admin123'
    btn_login.click
  end

  def validar_pagina_login
    assert_title(@titulo_login)
  end
end
