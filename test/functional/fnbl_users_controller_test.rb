require 'test_helper'

class FnblUsersControllerTest < ActionController::TestCase
  setup do
    @fnbl_user = fnbl_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fnbl_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fnbl_user" do
    assert_difference('FnblUser.count') do
      post :create, fnbl_user: @fnbl_user.attributes
    end

    assert_redirected_to fnbl_user_path(assigns(:fnbl_user))
  end

  test "should show fnbl_user" do
    get :show, id: @fnbl_user.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fnbl_user.to_param
    assert_response :success
  end

  test "should update fnbl_user" do
    put :update, id: @fnbl_user.to_param, fnbl_user: @fnbl_user.attributes
    assert_redirected_to fnbl_user_path(assigns(:fnbl_user))
  end

  test "should destroy fnbl_user" do
    assert_difference('FnblUser.count', -1) do
      delete :destroy, id: @fnbl_user.to_param
    end

    assert_redirected_to fnbl_users_path
  end
end
