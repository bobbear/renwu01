require 'test_helper'

class BusinessTripInfosControllerTest < ActionController::TestCase
  setup do
    @business_trip_info = business_trip_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_trip_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_trip_info" do
    assert_difference('BusinessTripInfo.count') do
      post :create, business_trip_info: { destination: @business_trip_info.destination, end_date: @business_trip_info.end_date, start_date: @business_trip_info.start_date, total_expense: @business_trip_info.total_expense, user_id: @business_trip_info.user_id }
    end

    assert_redirected_to business_trip_info_path(assigns(:business_trip_info))
  end

  test "should show business_trip_info" do
    get :show, id: @business_trip_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @business_trip_info
    assert_response :success
  end

  test "should update business_trip_info" do
    patch :update, id: @business_trip_info, business_trip_info: { destination: @business_trip_info.destination, end_date: @business_trip_info.end_date, start_date: @business_trip_info.start_date, total_expense: @business_trip_info.total_expense, user_id: @business_trip_info.user_id }
    assert_redirected_to business_trip_info_path(assigns(:business_trip_info))
  end

  test "should destroy business_trip_info" do
    assert_difference('BusinessTripInfo.count', -1) do
      delete :destroy, id: @business_trip_info
    end

    assert_redirected_to business_trip_infos_path
  end
end
