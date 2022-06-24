class BookingsController < ActionController::Base

  def new
    @booking = Booking.new
  end

  def create

    @booking = Booking.new(bookings_params)

    if @booking.save
      redirect_to new_booking_path
      flash[:success] = 'Booking saved successfully'
    else
      redirect_to new_booking_path
      flash[:danger] = 'Something went wrong. Please try again'
    end
  end

  private

  def bookings_params
    params.require(:booking).permit(:full_name, :phone, :email, :cpf, :annotation, :booking_date,
                                    :booking_time_start, :booking_time_ending)
  end

end

