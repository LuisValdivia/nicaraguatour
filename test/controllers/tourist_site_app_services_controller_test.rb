require 'test_helper'

class TouristSiteAppServicesControllerTest < ActionController::TestCase
  setup do
    @tourist_site_app_service = tourist_site_app_services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tourist_site_app_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tourist_site_app_service" do
    assert_difference('TouristSiteAppService.count') do
      post :create, tourist_site_app_service: { app_service_id: @tourist_site_app_service.app_service_id, tourist_site_id: @tourist_site_app_service.tourist_site_id }
    end

    assert_redirected_to tourist_site_app_service_path(assigns(:tourist_site_app_service))
  end

  test "should show tourist_site_app_service" do
    get :show, id: @tourist_site_app_service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tourist_site_app_service
    assert_response :success
  end

  test "should update tourist_site_app_service" do
    patch :update, id: @tourist_site_app_service, tourist_site_app_service: { app_service_id: @tourist_site_app_service.app_service_id, tourist_site_id: @tourist_site_app_service.tourist_site_id }
    assert_redirected_to tourist_site_app_service_path(assigns(:tourist_site_app_service))
  end

  test "should destroy tourist_site_app_service" do
    assert_difference('TouristSiteAppService.count', -1) do
      delete :destroy, id: @tourist_site_app_service
    end

    assert_redirected_to tourist_site_app_services_path
  end
end
