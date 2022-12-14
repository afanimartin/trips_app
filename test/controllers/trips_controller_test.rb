require 'test_helper'

class TripsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trip = trips(:one)
  end

  test "should get index" do
    get trips_url
    assert_response :success
  end

  test "should get new" do
    get new_trip_url
    assert_response :success
  end

  test "should create trip" do
    assert_difference('Trip.count') do
      post trips_url, params: { trip: { destination: @trip.destination, end_time: @trip.end_time, is_recuring_schedule: @trip.is_recuring_schedule, last_booking_time: @trip.last_booking_time, maximum_person: @trip.maximum_person, meeting_point: @trip.meeting_point, minimum_person: @trip.minimum_person, start_time: @trip.start_time } }
    end

    assert_redirected_to trip_url(Trip.last)
  end

  test "should show trip" do
    get trip_url(@trip)
    assert_response :success
  end

  test "should get edit" do
    get edit_trip_url(@trip)
    assert_response :success
  end

  test "should update trip" do
    patch trip_url(@trip), params: { trip: { destination: @trip.destination, end_time: @trip.end_time, is_recuring_schedule: @trip.is_recuring_schedule, last_booking_time: @trip.last_booking_time, maximum_person: @trip.maximum_person, meeting_point: @trip.meeting_point, minimum_person: @trip.minimum_person, start_time: @trip.start_time } }
    assert_redirected_to trip_url(@trip)
  end

  test "should destroy trip" do
    assert_difference('Trip.count', -1) do
      delete trip_url(@trip)
    end

    assert_redirected_to trips_url
  end
end
