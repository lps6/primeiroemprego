class StaticPagesController < ApplicationController
  def home
    @title = 'GetXp'
    @jumbotron = 'Nossa missão é conectar profissionais com pouca ou nenhuma experiência a 
    empresas dispostas a dar primeiras oportunidades.'
  end

  def help
  end
end
