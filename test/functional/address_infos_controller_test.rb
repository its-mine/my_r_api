require 'test_helper'

class AddressInfosControllerTest < ActionController::TestCase
  setup do
    @address_info = address_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:address_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create address_info" do
    assert_difference('AddressInfo.count') do
      post :create, address_info: { address1: @address_info.address1, address2: @address_info.address2, city: @address_info.city, created_by: @address_info.created_by, state: @address_info.state, updated_by: @address_info.updated_by, validation_status: @address_info.validation_status, zip: @address_info.zip }
    end

    assert_redirected_to address_info_path(assigns(:address_info))
  end

  test "should show address_info" do
    get :show, id: @address_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @address_info
    assert_response :success
  end

  test "should update address_info" do
    put :update, id: @address_info, address_info: { address1: @address_info.address1, address2: @address_info.address2, city: @address_info.city, created_by: @address_info.created_by, state: @address_info.state, updated_by: @address_info.updated_by, validation_status: @address_info.validation_status, zip: @address_info.zip }
    assert_redirected_to address_info_path(assigns(:address_info))
  end

  test "should destroy address_info" do
    assert_difference('AddressInfo.count', -1) do
      delete :destroy, id: @address_info
    end

    assert_redirected_to address_infos_path
  end
end
