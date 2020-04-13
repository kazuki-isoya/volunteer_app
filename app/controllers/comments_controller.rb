class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_volunteer, only: [:create, :edit, :update, :destroy]

  def create
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
    @comment = @volunteer.comments.find(params[:id])
    respond_to do |format|
      flash.now[:notice] = 'コメントの編集中'
      format.js { render :edit }
    end
  end

  def update
    @comment = @volunteer.comments.find(params[:id])
    respond_to do |format|
      if @comment.update(comment_params)
        flash.now[:notice] = 'コメントが編集されました'
        format.js { render :index }
      else
        flash.now[:notice] = 'コメントの編集に失敗しました'
        format.html { redirect_to volunteer_path(@volunteer), notice: '編集できませんでした' }
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
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
    @comment = Comment.find_by(id: params[:id], volunteer_id: params[:volunteer_id])
  end


  def set_volunteer
    @volunteer = Volunteer.find(params[:volunteer_id])
  end

  def comment_params
    params.require(:comment).permit(:volunteer_id, :content)
  end
end
