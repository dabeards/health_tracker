class PerformedExercisesController < ApplicationController
  before_action :set_performed_exercise, only: [:show, :edit, :update, :destroy]

  # GET /performed_exercises
  # GET /performed_exercises.json
  def index
    @performed_exercises = PerformedExercise.all
  end

  # GET /performed_exercises/1
  # GET /performed_exercises/1.json
  def show
  end

  # GET /performed_exercises/new
  def new
    @performed_exercise = PerformedExercise.new
  end

  # GET /performed_exercises/1/edit
  def edit
  end

  # POST /performed_exercises
  # POST /performed_exercises.json
  def create
    @performed_exercise = PerformedExercise.new(performed_exercise_params)

    respond_to do |format|
      if @performed_exercise.save
        format.html { redirect_to @performed_exercise, notice: 'Performed exercise was successfully created.' }
        format.json { render :show, status: :created, location: @performed_exercise }
      else
        format.html { render :new }
        format.json { render json: @performed_exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /performed_exercises/1
  # PATCH/PUT /performed_exercises/1.json
  def update
    respond_to do |format|
      if @performed_exercise.update(performed_exercise_params)
        format.html { redirect_to @performed_exercise, notice: 'Performed exercise was successfully updated.' }
        format.json { render :show, status: :ok, location: @performed_exercise }
      else
        format.html { render :edit }
        format.json { render json: @performed_exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /performed_exercises/1
  # DELETE /performed_exercises/1.json
  def destroy
    @performed_exercise.destroy
    respond_to do |format|
      format.html { redirect_to performed_exercises_url, notice: 'Performed exercise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_performed_exercise
      @performed_exercise = PerformedExercise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def performed_exercise_params
      params.require(:performed_exercise).permit(:burned_calories, :exercise_date, :exercise_name, :exercise_type_id)
    end
end
