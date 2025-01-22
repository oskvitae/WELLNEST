class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @service = Service.find(params[:service_id])
    @booking = Booking.new
  end

  def create
    @service = Service.find(params[booking_params])
    @booking = Booking.new
    @booking.service = @service
    if booking.save
      redirect_to service_path(@service), notice: "Booking successfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private
  def booking_params
    params.require(:booking).permit(:user_id, :service_id, :status)
  end
end
