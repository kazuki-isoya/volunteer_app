class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    volunteer = Volunteer.find(params[:volunteer_id])
    @comment = volunteer.comments.build(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      flash[:notice] = "コメントしました"
      redirect_back(fallback_location: root_path)
    else
      flash[:alert] = "コメントに失敗しました"
      redirect_back(fallback_location: root_path)
    end
  end

  def edit; end

  def update; end

  def destroy
    Comment.find_by(id: params[:id],volunteer_id: params[:volunteer_id]).destroy
    flash[:alert] = "コメントを削除しました"
    redirect_back(fallback_location: root_path)
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
