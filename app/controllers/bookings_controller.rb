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
    @booking = Booking.new
    @bookings = Booking.all
    @service = Service.find(params[:service_id])
  end

  def update
  end

  def destroy
  end
end
