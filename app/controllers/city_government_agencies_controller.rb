class CityGovernmentAgenciesController < ApplicationController

  def show
    @city_government_agency = CityGovernmentAgency.find(params[:id])

    authorize @city_government_agency
    render json: @city_government_agency.branches
  end


end
