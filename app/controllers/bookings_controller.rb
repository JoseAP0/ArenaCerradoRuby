class BookingsController < ActionController::Base

  def index
    @booking = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create

    @booking = Booking.new(Booking_params)

    respond_to do |format|
      if @booking.save
        format.html { redirect_to booking_url(@booking), notice: "Test was successfully created." }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def Booking_params
    params.fetch(:Booking, {})
  end
end

