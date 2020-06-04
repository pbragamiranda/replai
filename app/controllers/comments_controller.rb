class CommentsController < ApplicationController

  before_action :find_public_datum

  def new
    @comment = Comment.new
    authorize @comment
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.public_datum = @public_datum
    @comment.user = current_user
    authorize @comment
    if @comment.save
      redirect_to public_datum_path(@public_datum)
    else
      render :new
    end
  end

  private

  def find_public_datum
    @public_datum = PublicDatum.find(params[:public_datum_id])
    authorize @public_datum
  end

  def comment_params
    params.require(:comment).permit(:content)
  end

end
