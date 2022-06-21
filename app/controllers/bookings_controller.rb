class BookingsController < ActionController::Base

  def new
    @booking = Booking.new
  end

  def create

    @booking = Booking.new(bookings_params)

    respond_to do |format|
      if @booking.save
        format.html { redirect_to new_booking_path, flash: {success: "all caught up. Thank you!"}}
        # format.json { render :show, status: :created, location: @booking }
      else
        format.html { redirect_to new_booking_path, flash: { error: "Something went wrong with your booking. Please Try again"}}
        format.html { render :new, status: :unprocessable_entity }
        # format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def bookings_params
    params.require(:booking).permit(:full_name, :phone, :email, :cpf, :annotation, :booking_date, :booking_time_start, :booking_time_ending)
  end

end

