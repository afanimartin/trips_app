class AddPhoneNumberToTrip < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :phone_number, :integer
  end
end
