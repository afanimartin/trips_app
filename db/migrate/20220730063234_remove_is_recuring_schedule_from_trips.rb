class RemoveIsRecuringScheduleFromTrips < ActiveRecord::Migration[5.2]
  def change
    remove_column :trips, :is_recuring_schedule, :boolean
  end
end
