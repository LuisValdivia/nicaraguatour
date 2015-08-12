class TouristSiteCategoriesController < ApplicationController
  before_action :set_tourist_site_category, only: [:show, :edit, :update, :destroy]

  # GET /tourist_site_categories
  # GET /tourist_site_categories.json
  def index
    @tourist_site_categories = TouristSiteCategory.all
  end

  # GET /tourist_site_categories/1
  # GET /tourist_site_categories/1.json
  def show
  end

  # GET /tourist_site_categories/new
  def new
    @tourist_site_category = TouristSiteCategory.new
  end

  # GET /tourist_site_categories/1/edit
  def edit
  end

  # POST /tourist_site_categories
  # POST /tourist_site_categories.json
  def create
    @tourist_site_category = TouristSiteCategory.new(tourist_site_category_params)

    respond_to do |format|
      if @tourist_site_category.save
        format.html { redirect_to @tourist_site_category, notice: 'Tourist site category was successfully created.' }
        format.json { render :show, status: :created, location: @tourist_site_category }
      else
        format.html { render :new }
        format.json { render json: @tourist_site_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tourist_site_categories/1
  # PATCH/PUT /tourist_site_categories/1.json
  def update
    respond_to do |format|
      if @tourist_site_category.update(tourist_site_category_params)
        format.html { redirect_to @tourist_site_category, notice: 'Tourist site category was successfully updated.' }
        format.json { render :show, status: :ok, location: @tourist_site_category }
      else
        format.html { render :edit }
        format.json { render json: @tourist_site_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tourist_site_categories/1
  # DELETE /tourist_site_categories/1.json
  def destroy
    @tourist_site_category.destroy
    respond_to do |format|
      format.html { redirect_to tourist_site_categories_url, notice: 'Tourist site category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tourist_site_category
      @tourist_site_category = TouristSiteCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tourist_site_category_params
      params.require(:tourist_site_category).permit(:tourist_site_id, :category_id)
    end
end
