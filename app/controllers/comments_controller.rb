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
      flesh[:alert] = "コメントに失敗しました"
      redirect_back(fallback_location: root_path)
    end
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
