require 'test_helper'

class ExternalResourcesControllerTest < ActionController::TestCase
  setup do
    @external_resource = external_resources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:external_resources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create external_resource" do
    assert_difference('ExternalResource.count') do
      post :create, external_resource: { description: @external_resource.description, name: @external_resource.name, photo: @external_resource.photo }
    end

    assert_redirected_to external_resource_path(assigns(:external_resource))
  end

  test "should show external_resource" do
    get :show, id: @external_resource
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @external_resource
    assert_response :success
  end

  test "should update external_resource" do
    patch :update, id: @external_resource, external_resource: { description: @external_resource.description, name: @external_resource.name, photo: @external_resource.photo }
    assert_redirected_to external_resource_path(assigns(:external_resource))
  end

  test "should destroy external_resource" do
    assert_difference('ExternalResource.count', -1) do
      delete :destroy, id: @external_resource
    end

    assert_redirected_to external_resources_path
  end
end
