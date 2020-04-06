class CategoriesController < ApplicationController
  before_action :set_category, only: [:edit, :update, :show, :destroy]
  before_action :admin_user?

  def index
    @categories = Category.page(params[:page]).per(4)
  end

  def show
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path, notice: 'カテゴリーを作成しました！'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @category.update(category_params)
      redirect_to categories_path, notice: 'カテゴリーを編集しました。'
    else
      render :edit
    end
  end

  def destroy
    @category.destroy
    redirect_to categories_path, notice: 'カテゴリーを削除しました。'
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def admin_user?
    unless current_user.admin == true
      redirect_to root_path, alert: '権限がありません'
    end
  end

  def category_params
    params.require(:category).permit(:name, :icon, :icon_cache, :remove_icon)
  end

end
