json.extract! trip, :id, :start_time, :end_time, :minimum_person, :maximum_person, :last_booking_time, :is_recuring_schedule, :meeting_point, :destination, :created_at, :updated_at
json.url trip_url(trip, format: :json)
