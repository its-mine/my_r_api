require 'test_helper'

class PostingsControllerTest < ActionController::TestCase
  setup do
    @posting = postings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create posting" do
    assert_difference('Posting.count') do
      post :create, posting: { available_seats: @posting.available_seats, city: @posting.city, contact_id: @posting.contact_id, created_by: @posting.created_by, destination_geo: @posting.destination_geo, fare_id: @posting.fare_id, from_place_tag1: @posting.from_place_tag1, from_place_tag2: @posting.from_place_tag2, from_place_tag3: @posting.from_place_tag3, is_spam: @posting.is_spam, number_of_routes: @posting.number_of_routes, pincode: @posting.pincode, reliability_id: @posting.reliability_id, source_geo: @posting.source_geo, state: @posting.state, status: @posting.status, to_place_tag1: @posting.to_place_tag1, to_place_tag2: @posting.to_place_tag2, to_place_tag3: @posting.to_place_tag3, travel_date_time: @posting.travel_date_time, travel_date_time_utc: @posting.travel_date_time_utc, updated_by: @posting.updated_by }
    end

    assert_redirected_to posting_path(assigns(:posting))
  end

  test "should show posting" do
    get :show, id: @posting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @posting
    assert_response :success
  end

  test "should update posting" do
    put :update, id: @posting, posting: { available_seats: @posting.available_seats, city: @posting.city, contact_id: @posting.contact_id, created_by: @posting.created_by, destination_geo: @posting.destination_geo, fare_id: @posting.fare_id, from_place_tag1: @posting.from_place_tag1, from_place_tag2: @posting.from_place_tag2, from_place_tag3: @posting.from_place_tag3, is_spam: @posting.is_spam, number_of_routes: @posting.number_of_routes, pincode: @posting.pincode, reliability_id: @posting.reliability_id, source_geo: @posting.source_geo, state: @posting.state, status: @posting.status, to_place_tag1: @posting.to_place_tag1, to_place_tag2: @posting.to_place_tag2, to_place_tag3: @posting.to_place_tag3, travel_date_time: @posting.travel_date_time, travel_date_time_utc: @posting.travel_date_time_utc, updated_by: @posting.updated_by }
    assert_redirected_to posting_path(assigns(:posting))
  end

  test "should destroy posting" do
    assert_difference('Posting.count', -1) do
      delete :destroy, id: @posting
    end

    assert_redirected_to postings_path
  end
end
