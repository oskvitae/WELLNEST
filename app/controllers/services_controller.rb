class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      redirect_to services_path, notice: "Service successfully created ✅"
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
    @service.destroy
    redirect_to services_path(service), notice: "Service successfully removed"
  end

  private

  def service_params
    params.require(:service).permit(:title, :description, :duration, :category, :price )
  end
end
