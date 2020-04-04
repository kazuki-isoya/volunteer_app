class GoodEvaluationsController < ApplicationController
  before_action :set_user

  def create
    evaluating = current_user.evaluate(@user)
    if evaluating.save
      flash[:notice] = 'ユーザーをフォローしました'
      redirect_to @user
    else
      flash.now[:alert] = 'ユーザーのフォローに失敗しました'
      redirect_to @user
    end
  end

  def destroy
    evaluating= current_user.unevaluate(@user)
    if evaluating.destroy
      flash[:notice] = 'ユーザーのフォローを解除しました'
      redirect_to @user
    else
      flash.now[:alert] = 'ユーザーのフォロー解除に失敗しました'
      redirect_to @user
    end
  end

  private

  def set_user
    @user = User.find(params[:evaluate_user_id])
  end
end
