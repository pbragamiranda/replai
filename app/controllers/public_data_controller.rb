class PublicDataController < ApplicationController
	skip_before_action :authenticate_user!, only: [:index]
	before_action :find_public_data, only: [:show]

	def index
		# @public_data = PublicDatum.all.order(created_at: :desc)
    if params[:query].present?
      @public_data = PublicDatum.search_by_name_category_description(params[:query]).order(created_at: :desc)
    else
      @public_data = PublicDatum.all.order(created_at: :desc)
    end
	end

	def show
		authorize @public_datum
	end

	def new
		@public_datum = PublicDatum.new
		authorize @public_datum
	end

	def create
		@public_datum = PublicDatum.new(public_datum_params)
		@public_datum.user = current_user
		authorize @public_datum
		if @public_datum.save
			redirect_to root_path, notice: "Upload Realizado com Sucesso. Obrigado pro tornar o Brasil mais transparente!"
		else
			render :new, notice: "Formulário Incompleto. Favor preencher de novo"
		end
	end

	private

	def find_public_data
		@public_datum = PublicDatum.find(params[:id])
	end

	def public_datum_params
		params.require(:public_datum).permit(:category, :power, :description,
																				 :branch, :city, :state, :name,
																				 :format, :level, :dataset)
	end
end
