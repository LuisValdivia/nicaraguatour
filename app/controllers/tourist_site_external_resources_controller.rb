class TouristSiteExternalResourcesController < ApplicationController
  before_action :set_tourist_site_external_resource, only: [:show, :edit, :update, :destroy]

  # GET /tourist_site_external_resources
  # GET /tourist_site_external_resources.json
  def index
    @tourist_site_external_resources = TouristSiteExternalResource.all
  end

  # GET /tourist_site_external_resources/1
  # GET /tourist_site_external_resources/1.json
  def show
  end

  # GET /tourist_site_external_resources/new
  def new
    @tourist_site_external_resource = TouristSiteExternalResource.new
  end

  # GET /tourist_site_external_resources/1/edit
  def edit
  end

  # POST /tourist_site_external_resources
  # POST /tourist_site_external_resources.json
  def create
    @tourist_site_external_resource = TouristSiteExternalResource.new(tourist_site_external_resource_params)

    respond_to do |format|
      if @tourist_site_external_resource.save
        format.html { redirect_to @tourist_site_external_resource, notice: 'Tourist site external resource was successfully created.' }
        format.json { render :show, status: :created, location: @tourist_site_external_resource }
      else
        format.html { render :new }
        format.json { render json: @tourist_site_external_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tourist_site_external_resources/1
  # PATCH/PUT /tourist_site_external_resources/1.json
  def update
    respond_to do |format|
      if @tourist_site_external_resource.update(tourist_site_external_resource_params)
        format.html { redirect_to @tourist_site_external_resource, notice: 'Tourist site external resource was successfully updated.' }
        format.json { render :show, status: :ok, location: @tourist_site_external_resource }
      else
        format.html { render :edit }
        format.json { render json: @tourist_site_external_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tourist_site_external_resources/1
  # DELETE /tourist_site_external_resources/1.json
  def destroy
    @tourist_site_external_resource.destroy
    respond_to do |format|
      format.html { redirect_to tourist_site_external_resources_url, notice: 'Tourist site external resource was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tourist_site_external_resource
      @tourist_site_external_resource = TouristSiteExternalResource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tourist_site_external_resource_params
      params.require(:tourist_site_external_resource).permit(:tourist_site_id, :external_resource_id)
    end
end
