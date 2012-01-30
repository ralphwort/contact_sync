require 'test_helper'

class FnblUserRolesControllerTest < ActionController::TestCase
  setup do
    @fnbl_user_role = fnbl_user_roles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fnbl_user_roles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fnbl_user_role" do
    assert_difference('FnblUserRole.count') do
      post :create, fnbl_user_role: @fnbl_user_role.attributes
    end

    assert_redirected_to fnbl_user_role_path(assigns(:fnbl_user_role))
  end

  test "should show fnbl_user_role" do
    get :show, id: @fnbl_user_role.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fnbl_user_role.to_param
    assert_response :success
  end

  test "should update fnbl_user_role" do
    put :update, id: @fnbl_user_role.to_param, fnbl_user_role: @fnbl_user_role.attributes
    assert_redirected_to fnbl_user_role_path(assigns(:fnbl_user_role))
  end

  test "should destroy fnbl_user_role" do
    assert_difference('FnblUserRole.count', -1) do
      delete :destroy, id: @fnbl_user_role.to_param
    end

    assert_redirected_to fnbl_user_roles_path
  end
end
