class StaticPagesController < ApplicationController
  def home
    
  	if user_signed_in?
  		redirect_to :controller => 'dashboard', :action => 'index'
  	end
    
    @title = 'GetXp'
    
    @jumbotron = 'Nossa missão é conectar profissionais com pouca ou nenhuma experiência a 
    empresas dispostas a dar primeiras oportunidades.'
    
  end

  def help
  end
  
end
