require "application_system_test_case"

class TripsTest < ApplicationSystemTestCase
  setup do
    @trip = trips(:one)
  end

  test "visiting the index" do
    visit trips_url
    assert_selector "h1", text: "Trips"
  end

  test "creating a Trip" do
    visit trips_url
    click_on "New Trip"

    fill_in "Destination", with: @trip.destination
    fill_in "End time", with: @trip.end_time
    check "Is recuring schedule" if @trip.is_recuring_schedule
    fill_in "Last booking time", with: @trip.last_booking_time
    fill_in "Maximum person", with: @trip.maximum_person
    fill_in "Meeting point", with: @trip.meeting_point
    fill_in "Minimum person", with: @trip.minimum_person
    fill_in "Start time", with: @trip.start_time
    click_on "Create Trip"

    assert_text "Trip was successfully created"
    click_on "Back"
  end

  test "updating a Trip" do
    visit trips_url
    click_on "Edit", match: :first

    fill_in "Destination", with: @trip.destination
    fill_in "End time", with: @trip.end_time
    check "Is recuring schedule" if @trip.is_recuring_schedule
    fill_in "Last booking time", with: @trip.last_booking_time
    fill_in "Maximum person", with: @trip.maximum_person
    fill_in "Meeting point", with: @trip.meeting_point
    fill_in "Minimum person", with: @trip.minimum_person
    fill_in "Start time", with: @trip.start_time
    click_on "Update Trip"

    assert_text "Trip was successfully updated"
    click_on "Back"
  end

  test "destroying a Trip" do
    visit trips_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trip was successfully destroyed"
  end
end
