class AddTripCostToTrip < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :trip_cost, :decimal
  end
end
