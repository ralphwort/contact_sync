require 'test_helper'

class FnblPimContactItemsControllerTest < ActionController::TestCase
  setup do
    @fnbl_pim_contact_item = fnbl_pim_contact_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fnbl_pim_contact_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fnbl_pim_contact_item" do
    assert_difference('FnblPimContactItem.count') do
      post :create, fnbl_pim_contact_item: @fnbl_pim_contact_item.attributes
    end

    assert_redirected_to fnbl_pim_contact_item_path(assigns(:fnbl_pim_contact_item))
  end

  test "should show fnbl_pim_contact_item" do
    get :show, id: @fnbl_pim_contact_item.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fnbl_pim_contact_item.to_param
    assert_response :success
  end

  test "should update fnbl_pim_contact_item" do
    put :update, id: @fnbl_pim_contact_item.to_param, fnbl_pim_contact_item: @fnbl_pim_contact_item.attributes
    assert_redirected_to fnbl_pim_contact_item_path(assigns(:fnbl_pim_contact_item))
  end

  test "should destroy fnbl_pim_contact_item" do
    assert_difference('FnblPimContactItem.count', -1) do
      delete :destroy, id: @fnbl_pim_contact_item.to_param
    end

    assert_redirected_to fnbl_pim_contact_items_path
  end
end
