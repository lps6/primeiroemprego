class AnswerGridsController < ApplicationController
  before_action :set_answer_grid, only: [:show, :edit, :update, :destroy]

  # GET /answer_grids
  # GET /answer_grids.json
  def index
    @answer_grids = AnswerGrid.all
  end

  # GET /answer_grids/1
  # GET /answer_grids/1.json
  def show
  end

  # GET /answer_grids/new
  def new
    @answer_grid = AnswerGrid.new
  end

  # GET /answer_grids/1/edit
  def edit
  end

  # POST /answer_grids
  # POST /answer_grids.json
  def create
    @answer_grid = AnswerGrid.new(answer_grid_params)

    respond_to do |format|
      if @answer_grid.save
        format.html { redirect_to @answer_grid, notice: 'Answer grid was successfully created.' }
        format.json { render :show, status: :created, location: @answer_grid }
      else
        format.html { render :new }
        format.json { render json: @answer_grid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answer_grids/1
  # PATCH/PUT /answer_grids/1.json
  def update
    respond_to do |format|
      if @answer_grid.update(answer_grid_params)
        format.html { redirect_to @answer_grid, notice: 'Answer grid was successfully updated.' }
        format.json { render :show, status: :ok, location: @answer_grid }
      else
        format.html { render :edit }
        format.json { render json: @answer_grid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answer_grids/1
  # DELETE /answer_grids/1.json
  def destroy
    @answer_grid.destroy
    respond_to do |format|
      format.html { redirect_to answer_grids_url, notice: 'Answer grid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer_grid
      @answer_grid = AnswerGrid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_grid_params
      params.require(:answer_grid).permit(:order, :quest_id, :question_id, :value, :user_id)
    end
end
