class PublicDataController < ApplicationController
	before_action :find_public_data, only [:show]

	def index
		@public_data = PublicDatum.all.order(created_at: :desc)
	end

	def show
	end

	def new
		@public_data = PublicDatum.new
	end

	def create
		@public_data = PublicDatum.new(public_data_params)
		@public_data.user = current_user
		if @public_data.save
			redirect_to_public_datum_path(@public_data), notice: "Upload Realizado com Sucesso. Obrigado pro tornar o Brasil mais transparente!"
		else
			render :new
		end
	end

	private

	def find_public_data
		@public_data = PublicDatum.find(params[:id])
	end

	def public_data_params
		params.require(:public_datum).permit(:category, :power, :description, :branch, :city, :state, :name, :format, :level)
	end
end
