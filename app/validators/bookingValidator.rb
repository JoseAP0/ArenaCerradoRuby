class BookingValidator < ActiveModel::Validator
  def validate(record)
    return unless record.booking_time_ending <= record.booking_time_start

    record.errors.add :base, 'The ending time can not be lower than starting'
  end
end
