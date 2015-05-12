require 'test_helper'

class SessionInfosControllerTest < ActionController::TestCase
  setup do
    @session_info = session_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:session_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create session_info" do
    assert_difference('SessionInfo.count') do
      post :create, session_info: { account_info_id: @session_info.account_info_id, created_by: @session_info.created_by, status: @session_info.status, uid: @session_info.uid, updated_by: @session_info.updated_by }
    end

    assert_redirected_to session_info_path(assigns(:session_info))
  end

  test "should show session_info" do
    get :show, id: @session_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @session_info
    assert_response :success
  end

  test "should update session_info" do
    put :update, id: @session_info, session_info: { account_info_id: @session_info.account_info_id, created_by: @session_info.created_by, status: @session_info.status, uid: @session_info.uid, updated_by: @session_info.updated_by }
    assert_redirected_to session_info_path(assigns(:session_info))
  end

  test "should destroy session_info" do
    assert_difference('SessionInfo.count', -1) do
      delete :destroy, id: @session_info
    end

    assert_redirected_to session_infos_path
  end
end
