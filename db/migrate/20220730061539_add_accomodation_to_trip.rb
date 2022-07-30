class AddAccomodationToTrip < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :accomodation, :boolean, default: true
  end
end
