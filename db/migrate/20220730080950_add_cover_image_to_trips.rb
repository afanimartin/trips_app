class AddCoverImageToTrips < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :cover_image, :string
  end
end
