class StaticPagesController < ApplicationController
  def home
    
  	if user_signed_in?
  		redirect_to :controller => 'dashboard', :action => 'index'
  	end
    
    @title = 'GetXp'
    
    @jumbotron = 'Nossa missão é conectar profissionais e empresas. Realize missões e conquiste seu espaço no mercado!'
    
    @tagline = 'Pront@ para sua primeira missão?'

    @titleforcompanies = 'Quer contratar pelo GetXp?'
    
    @jumbotronforcompanies = 'Nossa missão é conectar profissionais e empresas. Crie suas missões ou veja os resultados das missões já existentes e traga para seu time um profissional alinhado com seus valores e necessidades!'
  end

  def help
  end
  
end
