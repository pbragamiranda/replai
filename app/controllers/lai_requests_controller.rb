class LaiRequestsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_lai_request, only: [:submit, :show]

  def new
    @lai_request = LaiRequest.new()
    authorize @lai_request
  end

  def create
    @lai_request = LaiRequest.new(lai_request_params)
    @lai_request.status = "Editando"
    @lai_request.user_id = current_user.id
    authorize @lai_request
    if @lai_request.save
      redirect_to lai_request_path(@lai_request), notice: "Lai Request created!"
    else
      render :new, notice: "you missed something"
    end
  end

  def show

  end
  # def city_government_agency_names
  #   @city_government_agency_names = []
  #   CityGovernmentAgency.select(:city_name).each do |city|
  #     @city_government_agency_names << city.city_name
  #   end
  #   @city_government_agency_names
  # end


  def submit
      @lai_request.deadline = 20.days.from_now
      @lai_request.status = "Em andamento"
      enviar email para o orgão
  end

  private
  def lai_request_params
    params.require(:lai_request).permit(:description, :category, :format, :title, :city_government_agency_id)
  end

  def set_lai_request
    @lai_request = LaiRequest.find(params[:id])
    authorize @lai_request
  end
end
