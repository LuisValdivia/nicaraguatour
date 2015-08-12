class ServiceTypeServicesController < ApplicationController
  before_action :set_service_type_service, only: [:show, :edit, :update, :destroy]

  # GET /service_type_services
  # GET /service_type_services.json
  def index
    @service_type_services = ServiceTypeService.all
  end

  # GET /service_type_services/1
  # GET /service_type_services/1.json
  def show
  end

  # GET /service_type_services/new
  def new
    @service_type_service = ServiceTypeService.new
  end

  # GET /service_type_services/1/edit
  def edit
  end

  # POST /service_type_services
  # POST /service_type_services.json
  def create
    @service_type_service = ServiceTypeService.new(service_type_service_params)

    respond_to do |format|
      if @service_type_service.save
        format.html { redirect_to @service_type_service, notice: 'Service type service was successfully created.' }
        format.json { render :show, status: :created, location: @service_type_service }
      else
        format.html { render :new }
        format.json { render json: @service_type_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_type_services/1
  # PATCH/PUT /service_type_services/1.json
  def update
    respond_to do |format|
      if @service_type_service.update(service_type_service_params)
        format.html { redirect_to @service_type_service, notice: 'Service type service was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_type_service }
      else
        format.html { render :edit }
        format.json { render json: @service_type_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_type_services/1
  # DELETE /service_type_services/1.json
  def destroy
    @service_type_service.destroy
    respond_to do |format|
      format.html { redirect_to service_type_services_url, notice: 'Service type service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_type_service
      @service_type_service = ServiceTypeService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_type_service_params
      params.require(:service_type_service).permit(:service_types_id, :services_id)
    end
end
