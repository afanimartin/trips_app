class AddActivitiesToTrip < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :activities, :string, array: true, default: []
  end
end
