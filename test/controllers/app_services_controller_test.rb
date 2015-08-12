require 'test_helper'

class AppServicesControllerTest < ActionController::TestCase
  setup do
    @app_service = app_services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:app_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create app_service" do
    assert_difference('AppService.count') do
      post :create, app_service: { description: @app_service.description, name: @app_service.name }
    end

    assert_redirected_to app_service_path(assigns(:app_service))
  end

  test "should show app_service" do
    get :show, id: @app_service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @app_service
    assert_response :success
  end

  test "should update app_service" do
    patch :update, id: @app_service, app_service: { description: @app_service.description, name: @app_service.name }
    assert_redirected_to app_service_path(assigns(:app_service))
  end

  test "should destroy app_service" do
    assert_difference('AppService.count', -1) do
      delete :destroy, id: @app_service
    end

    assert_redirected_to app_services_path
  end
end
