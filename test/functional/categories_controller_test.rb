require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categories" do
    assert_difference('Categories.count') do
      post :create, :categories => { }
    end

    assert_redirected_to categories_path(assigns(:categories))
  end

  test "should show categories" do
    get :show, :id => categories(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => categories(:one).to_param
    assert_response :success
  end

  test "should update categories" do
    put :update, :id => categories(:one).to_param, :categories => { }
    assert_redirected_to categories_path(assigns(:categories))
  end

  test "should destroy categories" do
    assert_difference('Categories.count', -1) do
      delete :destroy, :id => categories(:one).to_param
    end

    assert_redirected_to categories_path
  end
end
