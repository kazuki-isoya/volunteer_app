class OrderManagementsController < ApplicationController
  def create
    order_management = current_user.order_managements.create(volunteer_id: params[:volunteer_id])
    redirect_to volunteers_path, notice: "#{order_management.volunteer.user.name}さんの依頼を受注しました"
  end

  def destroy
    order_management = current_user.order_managements.find_by(id: params[:id]).destroy
    redirect_to volunteers_path, notice: "#{order_management.volunteer.user.name}さんの依頼を受注解除しました"
  end
end
