class LaiRequestsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_lai_request, only: [:submit, :show, :edit, :update, :destroy]
  include ApplicationHelper

  def index
    @lai_requests = LaiRequest.where(user_id: current_user).order(created_at: :desc)
  end

  def new
    @lai_request = LaiRequest.new
    authorize @lai_request
  end

  def create
    @lai_request = LaiRequest.new(lai_request_params)
    anonymity = params[:anonymity] == "true"
    @lai_request.anonymity = anonymity
    @lai_request.status = "Editando"
    @lai_request.user_id = current_user.id
    authorize @lai_request
    if @lai_request.save
      redirect_to lai_request_path(@lai_request), notice: "Lai Request created!"
    else
      render :new, notice: "you missed something"
    end
  end

  def edit
  end

  def update
    @lai_request.update(lai_request_params)
    redirect_to lai_request_path(@lai_request)
  end

  def destroy
    @lai_request.destroy
    redirect_to lai_requests_path
  end

  def show
  end

  def submit
    unless params[:view]
      # enviar o email pro orgaos fazer depois
      @lai_request.deadline = 20.days.from_now
      @lai_request.status = "Enviado"
      if @lai_request.save!
        render :submit
        send_lai_request(@lai_request.id)
        send_confirmation_email(current_user.id, @lai_request.id)
        if @lai_request.branch.twitter.nil?
          send_tweet(@lai_request.branch.city_government_agency.city_name)
        else
          send_tweet(@lai_request.branch.twitter)
        end
      else
        redirect_to lai_request_path(@lai_request), notice: "you missed something"
      end
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

  def send_confirmation_email(user_id, lai_request_id)
    RequestConfirmationMailer.confirmation(user_id, lai_request_id).deliver_now
  end

  def send_lai_request(lai_request_id)
    RequestConfirmationMailer.send_request(lai_request_id).deliver_now
  end
end
