class WeightsController < ApplicationController
  before_action :set_weight, only: [:show, :edit, :update, :destroy]



  def index
    @weights = Weight.all
  end

  def show
  end

  def new
    @weights = Weight.new
  end

  def edit
  end

  def create
    @weight = Weight.new(weight_params)

    respond_to do |format|
      if @caloric_intake.save
        format.html { redirect_to @caloric_intake, notice: 'Caloric intake was successfully created.' }
        format.json { render :show, status: :created, location: @weight }
      else
        format.html { render :new }
        format.json { render json: @weight.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @weight.update(weight_params)
        format.html { redirect_to @weight, notice: 'Weight was successfully updated.' }
        format.json { render :show, status: :ok, location: @weight }
      else
        format.html { render :edit }
        format.json { render json: @weight.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end
end
