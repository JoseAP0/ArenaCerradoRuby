class Booking < ApplicationRecord
  validates :cpf, :phone, presence: true, numericality: { only_integer: true }
  validates :booking_time_start, :booking_time_ending, uniqueness: true, presence: true
  validates :cpf, :phone, length: { maximum: 11 }

  validates_with BookingValidator, fields: %i[booking_time_start booking_time_ending]
end
