require 'test_helper'

class FareInfosControllerTest < ActionController::TestCase
  setup do
    @fare_info = fare_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fare_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fare_info" do
    assert_difference('FareInfo.count') do
      post :create, fare_info: { created_by: @fare_info.created_by, fare_type: @fare_info.fare_type, total_fare: @fare_info.total_fare, updated_by: @fare_info.updated_by }
    end

    assert_redirected_to fare_info_path(assigns(:fare_info))
  end

  test "should show fare_info" do
    get :show, id: @fare_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fare_info
    assert_response :success
  end

  test "should update fare_info" do
    put :update, id: @fare_info, fare_info: { created_by: @fare_info.created_by, fare_type: @fare_info.fare_type, total_fare: @fare_info.total_fare, updated_by: @fare_info.updated_by }
    assert_redirected_to fare_info_path(assigns(:fare_info))
  end

  test "should destroy fare_info" do
    assert_difference('FareInfo.count', -1) do
      delete :destroy, id: @fare_info
    end

    assert_redirected_to fare_infos_path
  end
end
