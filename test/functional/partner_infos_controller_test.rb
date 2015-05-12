require 'test_helper'

class PartnerInfosControllerTest < ActionController::TestCase
  setup do
    @partner_info = partner_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:partner_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create partner_info" do
    assert_difference('PartnerInfo.count') do
      post :create, partner_info: { created_by: @partner_info.created_by, partner_id: @partner_info.partner_id, partner_name: @partner_info.partner_name, primary_contact_id: @partner_info.primary_contact_id, reliability_id: @partner_info.reliability_id, status: @partner_info.status, updated_by: @partner_info.updated_by }
    end

    assert_redirected_to partner_info_path(assigns(:partner_info))
  end

  test "should show partner_info" do
    get :show, id: @partner_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @partner_info
    assert_response :success
  end

  test "should update partner_info" do
    put :update, id: @partner_info, partner_info: { created_by: @partner_info.created_by, partner_id: @partner_info.partner_id, partner_name: @partner_info.partner_name, primary_contact_id: @partner_info.primary_contact_id, reliability_id: @partner_info.reliability_id, status: @partner_info.status, updated_by: @partner_info.updated_by }
    assert_redirected_to partner_info_path(assigns(:partner_info))
  end

  test "should destroy partner_info" do
    assert_difference('PartnerInfo.count', -1) do
      delete :destroy, id: @partner_info
    end

    assert_redirected_to partner_infos_path
  end
end
