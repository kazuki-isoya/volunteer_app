class OrderManagementsController < ApplicationController
  def create
    @volunteer = Volunteer.find(params[:volunteer_id])
    if @volunteer.user_id != current_user.id
      order_management = current_user.order_managements.create(volunteer_id: params[:volunteer_id])
      OrderManagementMailer.order_mail(@volunteer, current_user).deliver
      redirect_to volunteers_path, notice: "#{order_management.volunteer.user.name}さんの依頼を受注しました"
    else
      redirect_to volunteers_path, alert: "自分の依頼は受注できませんよ"
    end
  end

  def destroy
    @volunteer = current_user.order_managements.find_by(id: params[:id]).volunteer
    OrderManagementMailer.cancel_mail(@volunteer, current_user).deliver
    order_management = current_user.order_managements.find_by(id: params[:id]).destroy
    redirect_to volunteers_path, notice: "#{order_management.volunteer.user.name}さんの依頼を受注解除しました"
  end
end
