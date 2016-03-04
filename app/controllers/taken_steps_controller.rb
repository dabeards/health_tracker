class TakenStepsController < ApplicationController
  before_action :set_taken_step, only: [:show, :edit, :update, :destroy]

  # GET /performed_exercises
  # GET /performed_exercises.json
  def index
    @taken_steps = TakenSteps.all
  end

  # GET /performed_exercises/1
  # GET /performed_exercises/1.json
  def show
  end

  # GET /performed_exercises/new
  def new
    @taken_step = taken_step.new
  end

  # GET /performed_exercises/1/edit
  def edit
  end

  # POST /performed_exercises
  # POST /performed_exercises.json
  def create
    @taken_step = TakenStep.new(performed_exercise_params)

    respond_to do |format|
      if @taken_step.save
        format.html { redirect_to @taken_step, notice: 'Performed exercise was successfully created.' }
        format.json { render :show, status: :created, location: @taken_step }
      else
        format.html { render :new }
        format.json { render json: @taken_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /performed_exercises/1
  # PATCH/PUT /performed_exercises/1.json
  def update
    respond_to do |format|
      if @taken_step.update(performed_exercise_params)
        format.html { redirect_to @taken_step, notice: 'Performed exercise was successfully updated.' }
        format.json { render :show, status: :ok, location: @taken_step }
      else
        format.html { render :edit }
        format.json { render json: @taken_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /performed_exercises/1
  # DELETE /performed_exercises/1.json
  def destroy
    @taken_step.destroy
    respond_to do |format|
      format.html { redirect_to performed_exercises_url, notice: 'Performed exercise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_performed_exercise
      @taken_step = TakenStep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def performed_taken_step_params
      params.require(:taken_step).permit(:step_date)
    end
end
