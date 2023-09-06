# frozen_string_literal: true

Before do
  Capybara.page.driver.browser.manage.window.maximize
end

After do
  puts 'Tests finished'
end
