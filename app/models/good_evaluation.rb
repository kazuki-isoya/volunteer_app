class GoodEvaluation < ApplicationRecord
  belongs_to :user
  belongs_to :evaluate_user, class_name: 'User'

  validates :user_id, presence: true
  validates :evaluate_user_id, presence: true

end
