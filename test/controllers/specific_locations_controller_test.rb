require 'test_helper'

class SpecificLocationsControllerTest < ActionController::TestCase
  setup do
    @specific_location = specific_locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:specific_locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create specific_location" do
    assert_difference('SpecificLocation.count') do
      post :create, specific_location: { area_type_id: @specific_location.area_type_id, city_id: @specific_location.city_id, description: @specific_location.description, location: @specific_location.location, name: @specific_location.name, photo: @specific_location.photo }
    end

    assert_redirected_to specific_location_path(assigns(:specific_location))
  end

  test "should show specific_location" do
    get :show, id: @specific_location
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @specific_location
    assert_response :success
  end

  test "should update specific_location" do
    patch :update, id: @specific_location, specific_location: { area_type_id: @specific_location.area_type_id, city_id: @specific_location.city_id, description: @specific_location.description, location: @specific_location.location, name: @specific_location.name, photo: @specific_location.photo }
    assert_redirected_to specific_location_path(assigns(:specific_location))
  end

  test "should destroy specific_location" do
    assert_difference('SpecificLocation.count', -1) do
      delete :destroy, id: @specific_location
    end

    assert_redirected_to specific_locations_path
  end
end
