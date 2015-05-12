require 'test_helper'

class AccountInfosControllerTest < ActionController::TestCase
  setup do
    @account_info = account_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:account_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create account_info" do
    assert_difference('AccountInfo.count') do
      post :create, account_info: { created_by: @account_info.created_by, email_id: @account_info.email_id, partner_info_id: @account_info.partner_info_id, passphrase: @account_info.passphrase, password: @account_info.password, reliability_id: @account_info.reliability_id, session_status: @account_info.session_status, status: @account_info.status, updated_by: @account_info.updated_by }
    end

    assert_redirected_to account_info_path(assigns(:account_info))
  end

  test "should show account_info" do
    get :show, id: @account_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @account_info
    assert_response :success
  end

  test "should update account_info" do
    put :update, id: @account_info, account_info: { created_by: @account_info.created_by, email_id: @account_info.email_id, partner_info_id: @account_info.partner_info_id, passphrase: @account_info.passphrase, password: @account_info.password, reliability_id: @account_info.reliability_id, session_status: @account_info.session_status, status: @account_info.status, updated_by: @account_info.updated_by }
    assert_redirected_to account_info_path(assigns(:account_info))
  end

  test "should destroy account_info" do
    assert_difference('AccountInfo.count', -1) do
      delete :destroy, id: @account_info
    end

    assert_redirected_to account_infos_path
  end
end
