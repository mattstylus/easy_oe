require 'test_helper'

class SubPagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sub_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sub_page" do
    assert_difference('SubPage.count') do
      post :create, :sub_page => { }
    end

    assert_redirected_to sub_page_path(assigns(:sub_page))
  end

  test "should show sub_page" do
    get :show, :id => sub_pages(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => sub_pages(:one).to_param
    assert_response :success
  end

  test "should update sub_page" do
    put :update, :id => sub_pages(:one).to_param, :sub_page => { }
    assert_redirected_to sub_page_path(assigns(:sub_page))
  end

  test "should destroy sub_page" do
    assert_difference('SubPage.count', -1) do
      delete :destroy, :id => sub_pages(:one).to_param
    end

    assert_redirected_to sub_pages_path
  end
end
