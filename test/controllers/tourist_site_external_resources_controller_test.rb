require 'test_helper'

class TouristSiteExternalResourcesControllerTest < ActionController::TestCase
  setup do
    @tourist_site_external_resource = tourist_site_external_resources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tourist_site_external_resources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tourist_site_external_resource" do
    assert_difference('TouristSiteExternalResource.count') do
      post :create, tourist_site_external_resource: { external_resource_id: @tourist_site_external_resource.external_resource_id, tourist_site_id: @tourist_site_external_resource.tourist_site_id }
    end

    assert_redirected_to tourist_site_external_resource_path(assigns(:tourist_site_external_resource))
  end

  test "should show tourist_site_external_resource" do
    get :show, id: @tourist_site_external_resource
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tourist_site_external_resource
    assert_response :success
  end

  test "should update tourist_site_external_resource" do
    patch :update, id: @tourist_site_external_resource, tourist_site_external_resource: { external_resource_id: @tourist_site_external_resource.external_resource_id, tourist_site_id: @tourist_site_external_resource.tourist_site_id }
    assert_redirected_to tourist_site_external_resource_path(assigns(:tourist_site_external_resource))
  end

  test "should destroy tourist_site_external_resource" do
    assert_difference('TouristSiteExternalResource.count', -1) do
      delete :destroy, id: @tourist_site_external_resource
    end

    assert_redirected_to tourist_site_external_resources_path
  end
end
