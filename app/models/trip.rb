class Trip < ApplicationRecord
    belongs_to :user

    validates_presence_of :title, :start_time, :end_time, :maximum_person, :last_booking_time, :meeting_point, :destination, :trip_cost, :phone_number, :accomodation, :activities 
end
