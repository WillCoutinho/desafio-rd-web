# frozen_string_literal: true

class Admin < SitePrism::Page
  element :header_dashboard, 'h6'
  element :add_button, '.orangehrm-header-container > button'
  element :user_role_button, :xpath, "//*[text()='User Role']/../../div/div/."
  element :username_field, '.oxd-input.oxd-input:nth-child(1)'
  element :delete_button, :xpath, '//button[normalize-space()="Delete Selected"]'
  element :confirm_delete_button, :xpath, '//button[normalize-space()="Yes, Delete"]'

  def access_admin_tab
    click_link(href: '/web/index.php/admin/viewAdminModule')
  end

  def click_add_button
    add_button.click
  end

  def select_role
    find(:xpath, "//*[text()='User Role']/../../div/div/.").click
    find('div[role="listbox"]').set('A')
    find('div[role="listbox"]', :text => 'Admin').click
  end

  def fill_username_and_search
    find('.oxd-input.oxd-input').set('Admin')
    find('button[type="submit"]').click
  end

  def check_search_result
    Page.has_text?('Records Found')
  end

  def select_and_delete_user
    first('div[role="row"]').check
    find(delete_button).click
    find(confirm_delete_button).click
  end

  def check_delete
    Page.has_text?('No Records Found')
  end
end
