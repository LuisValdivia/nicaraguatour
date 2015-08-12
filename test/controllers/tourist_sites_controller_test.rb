require 'test_helper'

class TouristSitesControllerTest < ActionController::TestCase
  setup do
    @tourist_site = tourist_sites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tourist_sites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tourist_site" do
    assert_difference('TouristSite.count') do
      post :create, tourist_site: { address: @tourist_site.address, concat: @tourist_site.concat, description: @tourist_site.description, name: @tourist_site.name, owner: @tourist_site.owner, photo: @tourist_site.photo, specific_location_id: @tourist_site.specific_location_id }
    end

    assert_redirected_to tourist_site_path(assigns(:tourist_site))
  end

  test "should show tourist_site" do
    get :show, id: @tourist_site
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tourist_site
    assert_response :success
  end

  test "should update tourist_site" do
    patch :update, id: @tourist_site, tourist_site: { address: @tourist_site.address, concat: @tourist_site.concat, description: @tourist_site.description, name: @tourist_site.name, owner: @tourist_site.owner, photo: @tourist_site.photo, specific_location_id: @tourist_site.specific_location_id }
    assert_redirected_to tourist_site_path(assigns(:tourist_site))
  end

  test "should destroy tourist_site" do
    assert_difference('TouristSite.count', -1) do
      delete :destroy, id: @tourist_site
    end

    assert_redirected_to tourist_sites_path
  end
end
