class SpecificLocationsController < ApplicationController
  before_action :set_specific_location, only: [:show, :edit, :update, :destroy]

  # GET /specific_locations
  # GET /specific_locations.json
  def index
    @specific_locations = SpecificLocation.all
  end

  # GET /specific_locations/1
  # GET /specific_locations/1.json
  def show
  end

  # GET /specific_locations/new
  def new
    @specific_location = SpecificLocation.new
  end

  # GET /specific_locations/1/edit
  def edit
  end

  # POST /specific_locations
  # POST /specific_locations.json
  def create
    @specific_location = SpecificLocation.new(specific_location_params)

    respond_to do |format|
      if @specific_location.save
        format.html { redirect_to @specific_location, notice: 'Specific location was successfully created.' }
        format.json { render :show, status: :created, location: @specific_location }
      else
        format.html { render :new }
        format.json { render json: @specific_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /specific_locations/1
  # PATCH/PUT /specific_locations/1.json
  def update
    respond_to do |format|
      if @specific_location.update(specific_location_params)
        format.html { redirect_to @specific_location, notice: 'Specific location was successfully updated.' }
        format.json { render :show, status: :ok, location: @specific_location }
      else
        format.html { render :edit }
        format.json { render json: @specific_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /specific_locations/1
  # DELETE /specific_locations/1.json
  def destroy
    @specific_location.destroy
    respond_to do |format|
      format.html { redirect_to specific_locations_url, notice: 'Specific location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_specific_location
      @specific_location = SpecificLocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def specific_location_params
      params.require(:specific_location).permit(:name, :description, :location, :photo, :city_id, :area_type_id)
    end
end
