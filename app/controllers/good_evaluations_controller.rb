class GoodEvaluationsController < ApplicationController
  before_action :set_user

  def create
    evaluating = current_user.evaluate(@user)
    if evaluating.save
      flash[:notice] = "#{@user.name}を評価しました。"
      redirect_to @user
    else
      flash.now[:alert] = 'ユーザーの評価に失敗しました。'
      redirect_to @user
    end
  end

  def destroy
    evaluating= current_user.unevaluate(@user)
    if evaluating.destroy
      flash[:notice] = "#{@user.name}の評価を取り消しました。"
      redirect_to @user
    else
      flash.now[:alert] = 'ユーザーの評価の取り消しに失敗しました。'
      redirect_to @user
    end
  end

  private

  def set_user
    @user = User.find(params[:evaluate_user_id])
  end
end
