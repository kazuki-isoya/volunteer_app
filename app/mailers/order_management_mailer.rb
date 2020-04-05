class OrderManagementMailer < ApplicationMailer
  def order_mail(order, user)
    @volunteer = order
    @user = user
    mail to: @volunteer.user.email, subject:"依頼が受注されました"
  end
end
