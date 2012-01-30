require 'test_helper'

class FnblPimContactsControllerTest < ActionController::TestCase
  setup do
    @fnbl_pim_contact = fnbl_pim_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fnbl_pim_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fnbl_pim_contact" do
    assert_difference('FnblPimContact.count') do
      post :create, fnbl_pim_contact: @fnbl_pim_contact.attributes
    end

    assert_redirected_to fnbl_pim_contact_path(assigns(:fnbl_pim_contact))
  end

  test "should show fnbl_pim_contact" do
    get :show, id: @fnbl_pim_contact.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fnbl_pim_contact.to_param
    assert_response :success
  end

  test "should update fnbl_pim_contact" do
    put :update, id: @fnbl_pim_contact.to_param, fnbl_pim_contact: @fnbl_pim_contact.attributes
    assert_redirected_to fnbl_pim_contact_path(assigns(:fnbl_pim_contact))
  end

  test "should destroy fnbl_pim_contact" do
    assert_difference('FnblPimContact.count', -1) do
      delete :destroy, id: @fnbl_pim_contact.to_param
    end

    assert_redirected_to fnbl_pim_contacts_path
  end
end
