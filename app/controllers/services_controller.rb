class ServicesController < ApplicationController

  def index
    if params[:search].present?
      @services = Service.where('title ILIKE ?', "%#{params[:search]}%")
    else
      @services = Service.all
    end
  end

  def my_services
    @services = Service.where(user_id: current_user.id)
  end

  def show
    @service = Service.find(params[:id])
    @booking = Booking.new
    @review = Review.new
    @reviews = @service.reviews
    @marker = {
      lat: @service.latitude,
      lng: @service.longitude
    }
  end

  def new
    @service = Service.new
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
    @service = Service.find(params[:id])
    if @service.user_id != current_user.id
      redirect_to my_services_path, alert: "You are not authorised to edit this service"
    end
  end

  def update
    @service = Service.find(params[:id])
    if @service.user_id == current_user.id
      if@service.update(service_params)
        redirect_to my_services_path, notice: "Service successfully updated"
      else
      render :edit, status: :unprocessable_entity
      end
    else
      redirect_to my_services_path, alert: "You are not authorised to update this service"
    end
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
