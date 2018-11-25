class DashboardEmpresaController < ApplicationController
  before_action :authenticate_company!
  def index
  	@quests = Quest.all
  end
end
