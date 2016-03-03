class CaloricIntakesController < ApplicationController
  before_action :set_caloric_intake, only: [:show, :edit, :update, :destroy]

  # GET /caloric_intakes
  # GET /caloric_intakes.json
  def index
    @caloric_intakes = CaloricIntake.all
  end

  # GET /caloric_intakes/1
  # GET /caloric_intakes/1.json
  def show
  end

  # GET /caloric_intakes/new
  def new
    @caloric_intake = CaloricIntake.new
  end

  # GET /caloric_intakes/1/edit
  def edit
  end

  # POST /caloric_intakes
  # POST /caloric_intakes.json
  def create
    @caloric_intake = CaloricIntake.new(caloric_intake_params)

    respond_to do |format|
      if @caloric_intake.save
        format.html { redirect_to @caloric_intake, notice: 'Caloric intake was successfully created.' }
        format.json { render :show, status: :created, location: @caloric_intake }
      else
        format.html { render :new }
        format.json { render json: @caloric_intake.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caloric_intakes/1
  # PATCH/PUT /caloric_intakes/1.json
  def update
    respond_to do |format|
      if @caloric_intake.update(caloric_intake_params)
        format.html { redirect_to @caloric_intake, notice: 'Caloric intake was successfully updated.' }
        format.json { render :show, status: :ok, location: @caloric_intake }
      else
        format.html { render :edit }
        format.json { render json: @caloric_intake.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caloric_intakes/1
  # DELETE /caloric_intakes/1.json
  def destroy
    @caloric_intake.destroy
    respond_to do |format|
      format.html { redirect_to caloric_intakes_url, notice: 'Caloric intake was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caloric_intake
      @caloric_intake = CaloricIntake.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caloric_intake_params
      params.require(:caloric_intake).permit(:consumed_calories, :calories_date)
    end
end
