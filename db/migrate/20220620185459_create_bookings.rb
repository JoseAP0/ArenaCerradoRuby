class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :full_name
      t.string :phone
      t.string :email
      t.string :cpf
      t.string :annotation
      t.timestamp :booking_time_start
      t.timestamp :booking_time_ending

      t.timestamps
    end
  end
end
