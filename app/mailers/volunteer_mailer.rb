class VolunteerMailer < ApplicationMailer
  def volunteer_mail(volunteer)
    @volunteer = volunteer
    mail to: @volunteer.user.email, subject:"ボランティア依頼を出しました"
  end

  def delete_mail(volunteer)
    @volunteer = volunteer
    @volunteer.contractors.each do |contractor|
      mail to: contractor.email, subject:"受注していた依頼が削除されました"
    end
  end
end
