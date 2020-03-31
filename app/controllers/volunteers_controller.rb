class VolunteersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  before_action :set_volunteer, only: [:edit, :update, :show, :destroy]
  def index
    @volunteers = Volunteer.all
  end

  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteer = Volunteer.new(volunteer_params)
    if @volunteer.save
      redirect_to volunteers_path, notice: 'ボランティア募集を作成しました！'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @volunteer.update(volunteer_params)
      redirect_to volunteers_path, notice: 'ボランティア内容を編集しました。'
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @volunteer.destroy
    redirect_to volunteers_path, notice: 'ボランティアを削除しました。'
  end

  private

  def set_volunteer
    @volunteer = Volunteer.find(params[:id])
  end

  def volunteer_params
    params.require(:volunteer).permit(:title, :describe, :image, :address, :capacity, :date) # :image_cacheを削除
  end

end
