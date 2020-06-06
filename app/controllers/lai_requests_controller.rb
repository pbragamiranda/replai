class LaiRequestsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_lai_request, only: [:submit, :show]
  include ApplicationHelper

  def index
    @lai_requests = LaiRequest.all
    # @public_data = PublicDatum.all.order(created_at: :desc)
    # if params[:query].present?
    #   @products = Product.search_by_name_category_description(params[:query]).order(created_at: :desc)
    # else
    #   @products = Product.all.order(created_at: :desc)
    # end
  end

  def new
    @lai_request = LaiRequest.new
    authorize @lai_request
  end

  def create
    @lai_request = LaiRequest.new(lai_request_params)
    anonymity = params[:anonymity] == "true"
    @lai_request.anonymity = anonymity
    raise
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




  def submit
    # enviar o email pro orgaos fazer depois
    @lai_request.deadline = 20.days.from_now
    @lai_request.status = "Enviado"

    if @lai_request.save!
      render :submit
      send_tweet(@lai_request.branch.twitter)
    else
      redirect_to lai_request_path(@lai_request), notice: "you missed something"
    end
  end

  private
  def lai_request_params
    params.require(:lai_request).permit(:description, :category, :format, :title, :anonymity, :branch_id)
  end

  def set_lai_request
    @lai_request = LaiRequest.find(params[:id])
    authorize @lai_request
  end
end
