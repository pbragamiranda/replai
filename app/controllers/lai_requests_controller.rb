class LaiRequestsController < ApplicationController
  def new
    @lai_request = LaiRequest.new()
    city_government_agency_names
  end

  def create
    @lai_request = LaiRequest.new(lai_request_params)
    @lai_request.status = "Editando"
    # @lai_request.deadline = 20.days.from_now
    @lai_request.user_id = current_user.id
    if @lai_request.save
      redirect_to lai_request_path(@lai_request), notice: "Lai Request created!"
    else
      render :new, notice: "you missed something"
    end
  end

  def city_government_agency_names
    @city_government_agency_names = []
    CityGovernmentAgency.select(:city_name).each do |city|
      @city_government_agency_names << city.city_name
    end
    @city_government_agency_names
  end


  def submit

  end

  private
  def lai_request_params
    params.require(:lai_request).permit(:description, :category, :format, :title, :city_government_agency_city_name)
  end
end
