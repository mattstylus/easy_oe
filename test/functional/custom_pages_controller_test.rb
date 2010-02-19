require 'test_helper'

class CustomPagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:custom_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create custom_page" do
    assert_difference('CustomPage.count') do
      post :create, :custom_page => { }
    end

    assert_redirected_to custom_page_path(assigns(:custom_page))
  end

  test "should show custom_page" do
    get :show, :id => custom_pages(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => custom_pages(:one).to_param
    assert_response :success
  end

  test "should update custom_page" do
    put :update, :id => custom_pages(:one).to_param, :custom_page => { }
    assert_redirected_to custom_page_path(assigns(:custom_page))
  end

  test "should destroy custom_page" do
    assert_difference('CustomPage.count', -1) do
      delete :destroy, :id => custom_pages(:one).to_param
    end

    assert_redirected_to custom_pages_path
  end
end
