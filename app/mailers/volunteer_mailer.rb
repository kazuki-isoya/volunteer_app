class VolunteerMailer < ApplicationMailer
  def volunteer_mail(volunteer)
    @volunteer = volunteer
    mail to: @volunteer.user.email, subject:"依頼投稿の確認メール"
  end
end
