class OrderManagementMailer < ApplicationMailer
  def order_mail(order, user)
    @volunteer = order
    @user = user
    mail to: @volunteer.user.email, subject:"#{@user.name}が依頼を受注しました"
  end

  def cancel_mail(cancel, user)
    @volunteer = cancel
    @user = user
    mail to: @volunteer.user.email, subject:"#{@user.name}が依頼をキャンセルしました"
  end
end
