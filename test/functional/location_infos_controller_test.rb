require 'test_helper'

class LocationInfosControllerTest < ActionController::TestCase
  setup do
    @location_info = location_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:location_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create location_info" do
    assert_difference('LocationInfo.count') do
      post :create, location_info: { address_id: @location_info.address_id, contact_id: @location_info.contact_id, created_by: @location_info.created_by, location_name: @location_info.location_name, partner_info_id: @location_info.partner_info_id, status: @location_info.status, updated_by: @location_info.updated_by }
    end

    assert_redirected_to location_info_path(assigns(:location_info))
  end

  test "should show location_info" do
    get :show, id: @location_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @location_info
    assert_response :success
  end

  test "should update location_info" do
    put :update, id: @location_info, location_info: { address_id: @location_info.address_id, contact_id: @location_info.contact_id, created_by: @location_info.created_by, location_name: @location_info.location_name, partner_info_id: @location_info.partner_info_id, status: @location_info.status, updated_by: @location_info.updated_by }
    assert_redirected_to location_info_path(assigns(:location_info))
  end

  test "should destroy location_info" do
    assert_difference('LocationInfo.count', -1) do
      delete :destroy, id: @location_info
    end

    assert_redirected_to location_infos_path
  end
end
