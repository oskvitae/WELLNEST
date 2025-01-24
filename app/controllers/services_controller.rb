class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
    @booking = Booking.new
    @review = Review.new
    @marker = {
      lat: @service.latitude,
      lng: @service.longitude
    }
  end

  def new
    @service = Service.new
  end

  def my_services
    @services = Service.where(user_id: current_user.id)
  end

  def create
    @service = Service.new(service_params)
    @service.user = current_user
    if @service.save
      redirect_to my_services_path, notice: "Service successfully created ✅"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @service = Service.find(params[:id])

    if @service.user == current_user
      @service.destroy
      redirect_to my_services_services_path, notice: "Service successfully removed ✅"
    else
      redirect_to services_path, alert: "You are not authorized to delete this service."
    end
  end

  private

  def service_params
    params.require(:service).permit(:title, :description, :duration, :category, :price, :date, :time, :address, :class_size, :image)
  end
end
