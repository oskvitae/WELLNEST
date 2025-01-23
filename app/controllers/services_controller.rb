class ServicesController < ApplicationController

  def index
    if params[:query].present?
      @services = Service.where('title ILIKE ? OR content ILIKE ?', "%#{params[:query]}%", "%#{params[:query]}%")
    else
      @services = Service.all
    end
  end
end

#   def index
#   end

#   def show
#   end

#   def new
#   end

#   def create
#   end

#   def edit
#   end

#   def update
#   end

#   def destroy
#   end
# end
