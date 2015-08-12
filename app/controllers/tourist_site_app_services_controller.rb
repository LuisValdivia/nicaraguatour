class TouristSiteAppServicesController < ApplicationController
  before_action :set_tourist_site_app_service, only: [:show, :edit, :update, :destroy]

  # GET /tourist_site_app_services
  # GET /tourist_site_app_services.json
  def index
    @tourist_site_app_services = TouristSiteAppService.all
  end

  # GET /tourist_site_app_services/1
  # GET /tourist_site_app_services/1.json
  def show
  end

  # GET /tourist_site_app_services/new
  def new
    @tourist_site_app_service = TouristSiteAppService.new
  end

  # GET /tourist_site_app_services/1/edit
  def edit
  end

  # POST /tourist_site_app_services
  # POST /tourist_site_app_services.json
  def create
    @tourist_site_app_service = TouristSiteAppService.new(tourist_site_app_service_params)

    respond_to do |format|
      if @tourist_site_app_service.save
        format.html { redirect_to @tourist_site_app_service, notice: 'Tourist site app service was successfully created.' }
        format.json { render :show, status: :created, location: @tourist_site_app_service }
      else
        format.html { render :new }
        format.json { render json: @tourist_site_app_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tourist_site_app_services/1
  # PATCH/PUT /tourist_site_app_services/1.json
  def update
    respond_to do |format|
      if @tourist_site_app_service.update(tourist_site_app_service_params)
        format.html { redirect_to @tourist_site_app_service, notice: 'Tourist site app service was successfully updated.' }
        format.json { render :show, status: :ok, location: @tourist_site_app_service }
      else
        format.html { render :edit }
        format.json { render json: @tourist_site_app_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tourist_site_app_services/1
  # DELETE /tourist_site_app_services/1.json
  def destroy
    @tourist_site_app_service.destroy
    respond_to do |format|
      format.html { redirect_to tourist_site_app_services_url, notice: 'Tourist site app service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tourist_site_app_service
      @tourist_site_app_service = TouristSiteAppService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tourist_site_app_service_params
      params.require(:tourist_site_app_service).permit(:tourist_site_id, :app_service_id)
    end
end
