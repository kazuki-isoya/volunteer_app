class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_comment, only: [:edit, :update, :destroy]

  def create
    @volunteer = Volunteer.find(params[:volunteer_id])
    @comment = @volunteer.comments.build(comment_params)
    @comment.user_id = current_user.id
    respond_to do |format|
      if @comment.save
        format.js { render :index }
      else
        format.html { redirect_to volunteer_path(@volunteer), notice: '投稿できませんでした' }
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
    respond_to do |format|
      if @comment.destroy
        format.js { render :index }
      else
        format.html { redirect_to volunteer_path(@volunteer), notice: '削除できませんでした' }
      end
    end
  end


  private

  def set_comment
    @comment = Comment.find_by(id: params[:id],volunteer_id: params[:volunteer_id])
  end

  def comment_params
    params.require(:comment).permit(:volunteer_id, :content)
  end
end
