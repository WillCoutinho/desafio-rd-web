# frozen_string_literal: true

Dir[File.join(File.dirname(__FILE__), '~\..\features\pages*.page.rb')].each { |file| require file }

module Page
  def login
    @login ||= Login.new
  end

  def dashboard
    @dashboard ||= Dashboard.new
  end

  def admin
    @admin ||= Admin.new
  end
end
