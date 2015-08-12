require 'test_helper'

class TouristSiteCategoriesControllerTest < ActionController::TestCase
  setup do
    @tourist_site_category = tourist_site_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tourist_site_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tourist_site_category" do
    assert_difference('TouristSiteCategory.count') do
      post :create, tourist_site_category: { category_id: @tourist_site_category.category_id, tourist_site_id: @tourist_site_category.tourist_site_id }
    end

    assert_redirected_to tourist_site_category_path(assigns(:tourist_site_category))
  end

  test "should show tourist_site_category" do
    get :show, id: @tourist_site_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tourist_site_category
    assert_response :success
  end

  test "should update tourist_site_category" do
    patch :update, id: @tourist_site_category, tourist_site_category: { category_id: @tourist_site_category.category_id, tourist_site_id: @tourist_site_category.tourist_site_id }
    assert_redirected_to tourist_site_category_path(assigns(:tourist_site_category))
  end

  test "should destroy tourist_site_category" do
    assert_difference('TouristSiteCategory.count', -1) do
      delete :destroy, id: @tourist_site_category
    end

    assert_redirected_to tourist_site_categories_path
  end
end
