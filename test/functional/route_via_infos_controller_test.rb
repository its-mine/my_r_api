require 'test_helper'

class RouteViaInfosControllerTest < ActionController::TestCase
  setup do
    @route_via_info = route_via_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:route_via_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create route_via_info" do
    assert_difference('RouteViaInfo.count') do
      post :create, route_via_info: { created_by: @route_via_info.created_by, postings_id: @route_via_info.postings_id, route_via: @route_via_info.route_via, updated_by: @route_via_info.updated_by }
    end

    assert_redirected_to route_via_info_path(assigns(:route_via_info))
  end

  test "should show route_via_info" do
    get :show, id: @route_via_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @route_via_info
    assert_response :success
  end

  test "should update route_via_info" do
    put :update, id: @route_via_info, route_via_info: { created_by: @route_via_info.created_by, postings_id: @route_via_info.postings_id, route_via: @route_via_info.route_via, updated_by: @route_via_info.updated_by }
    assert_redirected_to route_via_info_path(assigns(:route_via_info))
  end

  test "should destroy route_via_info" do
    assert_difference('RouteViaInfo.count', -1) do
      delete :destroy, id: @route_via_info
    end

    assert_redirected_to route_via_infos_path
  end
end
