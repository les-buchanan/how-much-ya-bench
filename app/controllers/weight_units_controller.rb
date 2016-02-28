class WeightUnitsController < ApplicationController
  before_action :set_weight_unit, only: [:show, :edit, :update, :destroy]

  # GET /weight_units
  # GET /weight_units.json
  def index
    @weight_units = WeightUnit.all
  end

  # GET /weight_units/1
  # GET /weight_units/1.json
  def show
  end

  # GET /weight_units/new
  def new
    @weight_unit = WeightUnit.new
  end

  # GET /weight_units/1/edit
  def edit
  end

  # POST /weight_units
  # POST /weight_units.json
  def create
    @weight_unit = WeightUnit.new(weight_unit_params)

    respond_to do |format|
      if @weight_unit.save
        format.html { redirect_to @weight_unit, notice: 'Weight unit was successfully created.' }
        format.json { render :show, status: :created, location: @weight_unit }
      else
        format.html { render :new }
        format.json { render json: @weight_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weight_units/1
  # PATCH/PUT /weight_units/1.json
  def update
    respond_to do |format|
      if @weight_unit.update(weight_unit_params)
        format.html { redirect_to @weight_unit, notice: 'Weight unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @weight_unit }
      else
        format.html { render :edit }
        format.json { render json: @weight_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weight_units/1
  # DELETE /weight_units/1.json
  def destroy
    @weight_unit.destroy
    respond_to do |format|
      format.html { redirect_to weight_units_url, notice: 'Weight unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weight_unit
      @weight_unit = WeightUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weight_unit_params
      params.require(:weight_unit).permit(:name)
    end
end
