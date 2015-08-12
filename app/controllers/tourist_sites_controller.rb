class TouristSitesController < ApplicationController
  before_action :set_tourist_site, only: [:show, :edit, :update, :destroy]

  # GET /tourist_sites
  # GET /tourist_sites.json
  def index
    @tourist_sites = TouristSite.all
  end

  # GET /tourist_sites/1
  # GET /tourist_sites/1.json
  def show
  end

  # GET /tourist_sites/new
  def new
    @tourist_site = TouristSite.new
  end

  # GET /tourist_sites/1/edit
  def edit
  end

  # POST /tourist_sites
  # POST /tourist_sites.json
  def create
    @tourist_site = TouristSite.new(tourist_site_params)

    respond_to do |format|
      if @tourist_site.save
        format.html { redirect_to @tourist_site, notice: 'Tourist site was successfully created.' }
        format.json { render :show, status: :created, location: @tourist_site }
      else
        format.html { render :new }
        format.json { render json: @tourist_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tourist_sites/1
  # PATCH/PUT /tourist_sites/1.json
  def update
    respond_to do |format|
      if @tourist_site.update(tourist_site_params)
        format.html { redirect_to @tourist_site, notice: 'Tourist site was successfully updated.' }
        format.json { render :show, status: :ok, location: @tourist_site }
      else
        format.html { render :edit }
        format.json { render json: @tourist_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tourist_sites/1
  # DELETE /tourist_sites/1.json
  def destroy
    @tourist_site.destroy
    respond_to do |format|
      format.html { redirect_to tourist_sites_url, notice: 'Tourist site was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tourist_site
      @tourist_site = TouristSite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tourist_site_params
      params.require(:tourist_site).permit(:name, :description, :address, :concat, :owner, :photo, :specific_location_id)
    end
end
