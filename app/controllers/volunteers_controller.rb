class VolunteersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  def index
  end

  def new
  end

  def edit
  end

  def show
  end
end
