require 'test_helper'

class FnblTelNosControllerTest < ActionController::TestCase
  setup do
    @fnbl_tel_no = fnbl_tel_nos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fnbl_tel_nos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fnbl_tel_no" do
    assert_difference('FnblTelNo.count') do
      post :create, fnbl_tel_no: @fnbl_tel_no.attributes
    end

    assert_redirected_to fnbl_tel_no_path(assigns(:fnbl_tel_no))
  end

  test "should show fnbl_tel_no" do
    get :show, id: @fnbl_tel_no.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fnbl_tel_no.to_param
    assert_response :success
  end

  test "should update fnbl_tel_no" do
    put :update, id: @fnbl_tel_no.to_param, fnbl_tel_no: @fnbl_tel_no.attributes
    assert_redirected_to fnbl_tel_no_path(assigns(:fnbl_tel_no))
  end

  test "should destroy fnbl_tel_no" do
    assert_difference('FnblTelNo.count', -1) do
      delete :destroy, id: @fnbl_tel_no.to_param
    end

    assert_redirected_to fnbl_tel_nos_path
  end
end
