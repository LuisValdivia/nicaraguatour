require 'test_helper'

class ServiceTypeServicesControllerTest < ActionController::TestCase
  setup do
    @service_type_service = service_type_services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:service_type_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service_type_service" do
    assert_difference('ServiceTypeService.count') do
      post :create, service_type_service: { service_types_id: @service_type_service.service_types_id, services_id: @service_type_service.services_id }
    end

    assert_redirected_to service_type_service_path(assigns(:service_type_service))
  end

  test "should show service_type_service" do
    get :show, id: @service_type_service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @service_type_service
    assert_response :success
  end

  test "should update service_type_service" do
    patch :update, id: @service_type_service, service_type_service: { service_types_id: @service_type_service.service_types_id, services_id: @service_type_service.services_id }
    assert_redirected_to service_type_service_path(assigns(:service_type_service))
  end

  test "should destroy service_type_service" do
    assert_difference('ServiceTypeService.count', -1) do
      delete :destroy, id: @service_type_service
    end

    assert_redirected_to service_type_services_path
  end
end
