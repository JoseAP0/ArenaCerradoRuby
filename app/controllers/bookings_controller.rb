class BookingsController < ApplicationController

  before_action :authenticate_user!

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(bookings_params)

    if @booking.save
      flash[:success] = 'Booking saved successfully'
      respond_to do |format|
        format.html { redirect_to root_path }
      end
    else
      flash[:danger] = 'Something went wrong. Please try again'
      respond_to do |format|
        format.html { redirect_to new_booking_path }
      end
    end
  end

  private

  def bookings_params
    params.require(:booking).permit(:full_name, :phone, :email, :cpf, :annotation, :booking_date,
                                    :booking_time_start, :booking_time_ending)
  end

end

