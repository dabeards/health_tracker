class ExercisesPerformedsController < ApplicationController
  before_action :set_exercises_performed, only: [:show, :edit, :update, :destroy]

  # GET /exercises_performeds
  # GET /exercises_performeds.json
  def index
    @exercises_performeds = ExercisesPerformed.all
  end

  # GET /exercises_performeds/1
  # GET /exercises_performeds/1.json
  def show
  end

  # GET /exercises_performeds/new
  def new
    @exercises_performed = ExercisesPerformed.new
  end

  # GET /exercises_performeds/1/edit
  def edit
  end

  # POST /exercises_performeds
  # POST /exercises_performeds.json
  def create
    @exercises_performed = ExercisesPerformed.new(exercises_performed_params)

    respond_to do |format|
      if @exercises_performed.save
        format.html { redirect_to @exercises_performed, notice: 'Exercises performed was successfully created.' }
        format.json { render :show, status: :created, location: @exercises_performed }
      else
        format.html { render :new }
        format.json { render json: @exercises_performed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exercises_performeds/1
  # PATCH/PUT /exercises_performeds/1.json
  def update
    respond_to do |format|
      if @exercises_performed.update(exercises_performed_params)
        format.html { redirect_to @exercises_performed, notice: 'Exercises performed was successfully updated.' }
        format.json { render :show, status: :ok, location: @exercises_performed }
      else
        format.html { render :edit }
        format.json { render json: @exercises_performed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercises_performeds/1
  # DELETE /exercises_performeds/1.json
  def destroy
    @exercises_performed.destroy
    respond_to do |format|
      format.html { redirect_to exercises_performeds_url, notice: 'Exercises performed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercises_performed
      @exercises_performed = ExercisesPerformed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exercises_performed_params
      params.require(:exercises_performed).permit(:calories_burned, :excercise_date)
    end
end
