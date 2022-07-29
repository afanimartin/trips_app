class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :minimum_person, default: 1
      t.integer :maximum_person
      t.datetime :last_booking_time
      t.boolean :is_recuring_schedule
      t.string :meeting_point
      t.string :destination

      t.timestamps
    end
  end
end
