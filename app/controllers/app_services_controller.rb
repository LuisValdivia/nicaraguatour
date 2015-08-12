class AppServicesController < ApplicationController
  before_action :set_app_service, only: [:show, :edit, :update, :destroy]

  # GET /app_services
  # GET /app_services.json
  def index
    @app_services = AppService.all
  end

  # GET /app_services/1
  # GET /app_services/1.json
  def show
  end

  # GET /app_services/new
  def new
    @app_service = AppService.new
  end

  # GET /app_services/1/edit
  def edit
  end

  # POST /app_services
  # POST /app_services.json
  def create
    @app_service = AppService.new(app_service_params)

    respond_to do |format|
      if @app_service.save
        format.html { redirect_to @app_service, notice: 'App service was successfully created.' }
        format.json { render :show, status: :created, location: @app_service }
      else
        format.html { render :new }
        format.json { render json: @app_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /app_services/1
  # PATCH/PUT /app_services/1.json
  def update
    respond_to do |format|
      if @app_service.update(app_service_params)
        format.html { redirect_to @app_service, notice: 'App service was successfully updated.' }
        format.json { render :show, status: :ok, location: @app_service }
      else
        format.html { render :edit }
        format.json { render json: @app_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_services/1
  # DELETE /app_services/1.json
  def destroy
    @app_service.destroy
    respond_to do |format|
      format.html { redirect_to app_services_url, notice: 'App service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_service
      @app_service = AppService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def app_service_params
      params.require(:app_service).permit(:name, :description)
    end
end
