class OrderManagement < ApplicationRecord
  belongs_to :user
  belongs_to :volunteer

  def ordered_by?(user) #current_userがそのvolunteerを受注していればというメソッド。volunteerのビューで使おう。
    order_managements.where(user_id: user.id).exists?
  end

end
