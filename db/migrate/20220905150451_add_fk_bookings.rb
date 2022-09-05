class AddFkBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, 'user_id', :integer
    add_foreign_key :bookings, :users, primary_key: 'id'
  end
end