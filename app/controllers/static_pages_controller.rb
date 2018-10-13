class StaticPagesController < ApplicationController
  def home
    
  	if user_signed_in?
  		redirect_to :controller => 'dashboard', :action => 'index'
  	end
    
    @title = 'GetXp'
    
    @jumbotron = 'Nossa missão é conectar profissionais e empresas. Realize missões e conquiste seu espaço no mercado!'
    
    @tagline = 'Pronto para realziar sua primeira missão?'
  end

  def help
  end
  
end
