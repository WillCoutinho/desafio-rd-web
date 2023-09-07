# frozen_string_literal: true

class Admin < SitePrism::Page
  element :header_dashboard, 'h6'
  element :add_button, '.orangehrm-header-container > button'
  element :user_role_button, :xpath, "//*[text()='User Role']/../../div/div/."
  element :username_field, '.oxd-input.oxd-input:nth-child(1)'
  element :delete_button, :xpath, '//button[normalize-space()="Delete Selected"]'
  element :confirm_delete_button, :xpath, '//button[normalize-space()="Yes, Delete"]'
  element :username_new_user, :xpath, "//*[text()='Username']/../..//input"
  element :employee_name_field, :xpath, "//*[text()='Employee Name']/../..//input"
  element :status_dropdown, :xpath, "//*[text()='Status']/../../div/div/."
  element :password_field, :xpath, "//*[text()='Password']/../..//input"
  element :confirm_password_field, :xpath, "//*[text()='Confirm Password']/../..//input"


  def access_admin_tab
    click_link(href: '/web/index.php/admin/viewAdminModule')
  end

  def click_add_button
    add_button.click
  end

  def create_new_user
    select_role
    select_status
    choose_employee_name
    username_new_user.set(CREDENTIAL[:new_user][:username])
    fill_passwords_fields
    click_button 'Save'
  end

  def select_role
    user_role_button.click
    find('div[role="listbox"]', :text => 'Admin').click
  end

  def choose_employee_name
    employee_name_field.set(CREDENTIAL[:new_user][:employee_name][0])
    find('div[role="listbox"]', :text => CREDENTIAL[:new_user][:employee_name]).click
  end

  def select_status
    status_dropdown.click
    find('div[role="listbox"]', :text => 'Enabled').click
  end

  def fill_passwords_fields
    password_field.set(CREDENTIAL[:new_user][:password])
    confirm_password_field.set(CREDENTIAL[:new_user][:password])
  end

  def assert_user_created
    page.has_text?('Success')
  end

  def fill_username_and_search(username)
    username_field.set(username)
    click_button 'Search'
  end

  def check_search_result
    page.has_text?('(1) Record Found')
    page.has_text?(CREDENTIAL[:new_user][:employee_name])
  end

  def select_and_delete_user
    first(:xpath, "//*[contains(concat(' ',normalize-space(@class),' '),' oxd-checkbox-input ')]").click
    click_button 'Delete Selected'
  end

  def assert_popup_message
    page.has_text?('The selected record will be permanently deleted. Are you sure you want to continue?')
  end

  def confirm_delete
    click_button 'Yes, Delete'
  end

  def check_delete
    fill_username_and_search(CREDENTIAL[:new_user][:username])
    page.has_text?('No Records Found')
  end
end
