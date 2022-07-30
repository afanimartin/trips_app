class AddReservationFeeToTrip < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :reservation_fee, :decimal
  end
end
