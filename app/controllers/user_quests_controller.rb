class UserQuestsController < ApplicationController
  before_action :set_user_quest, only: [:show, :edit, :update, :destroy]

  # GET /user_quests
  # GET /user_quests.json
  def index
    @quest = Quest.all
  end

  # GET /user_quests/1
  # GET /user_quests/1.json
  def show
  end

  # GET /user_quests/new
  def new
    @quest = Quest.find(params[:id])
    @user_quest = Quest.user_quest.new
  end

  # GET /user_quests/1/edit
  def edit
    @quest = Quest.find(params[:id])
    @user_quest = UserQuest.new
  end

  # POST /user_quests
  # POST /user_quests.json
  def create
    @user_quest = UserQuest.new(user_quest_params)
    @user_quest.user_id = current_user.id
  end

  # PATCH/PUT /user_quests/1
  # PATCH/PUT /user_quests/1.json
  def update
    respond_to do |format|
      if @user_quest.update(user_quest_params)
        format.html { redirect_to @user_quest, notice: 'User quest was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_quest }
      else
        format.html { render :edit }
        format.json { render json: @user_quest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_quests/1
  # DELETE /user_quests/1.json
  def destroy
    @user_quest.destroy
    respond_to do |format|
      format.html { redirect_to user_quests_url, notice: 'User quest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_quest
      @quest = Quest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_quest_params
      params.require(:user_quest).permit(:quest_id)
    end
end
