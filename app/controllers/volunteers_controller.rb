class VolunteersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  before_action :set_volunteer, only: [:edit, :update, :show, :destroy]
  before_action :search_params, only: [:search]

  PER = 8

  def index
    @q = Volunteer.ransack(params[:q])
    @categories = Category.all
    @volunteers = @q.result.includes(:user).page(params[:page]).order(created_at: :desc).per(PER)
  end

  def search
    @q = Volunteer.search(search_params)
    @volunteers = @q.result.includes(:user)
  end

  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteer = Volunteer.new(volunteer_params)
    @volunteer[:image] = "/assets/default.png" if params[:image].nil?
    @volunteer.user_id = current_user.id
    if @volunteer.save
      VolunteerMailer.volunteer_mail(@volunteer).deliver
      redirect_to root_path, notice: 'ボランティア募集を作成しました！'
    else
      render :new
    end
  end

  def edit
    if @volunteer.user_id != current_user.id
      redirect_to root_path, alert: 'not your task!'
    end
  end

  def update
    if @volunteer.user_id == current_user.id
      if @volunteer.update(volunteer_params)
        redirect_to root_path, notice: 'ボランティア内容を編集しました。'
      else
        render :edit
      end
    else
      redirect_to root_path, alert: '実行できません'
    end
  end

  def show
    @order_management = current_user.order_managements.find_by(volunteer_id: @volunteer.id) if user_signed_in?
    @comments = @volunteer.comments.includes(:user).order(created_at: :desc)
    @comment = @volunteer.comments.build
  end

  def destroy
    if @volunteer.user_id == current_user.id
      VolunteerMailer.delete_mail(@volunteer).deliver
      @volunteer.destroy
      redirect_to root_path, notice: 'ボランティアを削除しました。'
    else
      redirect_to root_path, alert: '実行できません'
    end
  end

  private

  def set_volunteer
    @volunteer = Volunteer.find(params[:id])
  end

  def volunteer_params
    params.require(:volunteer).permit(:title, :describe, :image, :image_cache, :remove_image, :address, :capacity, :date, category_ids: [])
  end

  def search_params
    params.require(:q).permit(:title_cont, :categories_id_eq)
  end

end
