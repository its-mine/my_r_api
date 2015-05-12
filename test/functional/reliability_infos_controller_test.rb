require 'test_helper'

class ReliabilityInfosControllerTest < ActionController::TestCase
  setup do
    @reliability_info = reliability_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reliability_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reliability_info" do
    assert_difference('ReliabilityInfo.count') do
      post :create, reliability_info: { created_by: @reliability_info.created_by, description: @reliability_info.description, star_rating: @reliability_info.star_rating, updated_by: @reliability_info.updated_by }
    end

    assert_redirected_to reliability_info_path(assigns(:reliability_info))
  end

  test "should show reliability_info" do
    get :show, id: @reliability_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reliability_info
    assert_response :success
  end

  test "should update reliability_info" do
    put :update, id: @reliability_info, reliability_info: { created_by: @reliability_info.created_by, description: @reliability_info.description, star_rating: @reliability_info.star_rating, updated_by: @reliability_info.updated_by }
    assert_redirected_to reliability_info_path(assigns(:reliability_info))
  end

  test "should destroy reliability_info" do
    assert_difference('ReliabilityInfo.count', -1) do
      delete :destroy, id: @reliability_info
    end

    assert_redirected_to reliability_infos_path
  end
end
