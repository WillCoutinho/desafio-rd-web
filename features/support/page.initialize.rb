# frozen_string_literal: true

Dir[File.join(File.dirname(__FILE__), 'C:\Users\Coutinho\Desktop\Cursos\API\desafio_rd_web\features\pages*.page.rb')].each { |file| require file }

module Page
  def login
    @login ||= Login.new
  end

  def dashboard
    @dashboard ||= Dashboard.new
  end
end
